module Year2020.Day12.Solution where

ex :: [[Char]]
ex = ["F10", "N3", "F7", "R90", "F11"]

-- |
-- Action N means to move north by the given value.
-- Action S means to move south by the given value.
-- Action E means to move east by the given value.
-- Action W means to move west by the given value.
-- Action L means to turn left the given number of degrees.
-- Action R means to turn right the given number of degrees.
-- Action F means to move forward by the given value in the direction the ship is currently facing.

data Action = N | S | E | W | F | L | R deriving Show

mkAction :: Char -> Action
mkAction 'N' = N
mkAction 'S' = S
mkAction 'E' = E
mkAction 'W' = W
mkAction 'F' = F
mkAction 'L' = L
mkAction 'R' = R
mkAction _ = error "invalid char for mkAction"

-- F10 would move the ship 10 units east (because the ship starts by facing east) to east 10, north 0.
-- N3 would move the ship 3 units north to east 10, north 3.
-- F7 would move the ship another 7 units east (because the ship is still facing east) to east 17, north 3.
-- R90 would cause the ship to turn right by 90 degrees and face south; it remains at east 17, north 3.
-- F11 would move the ship 11 units south to east 17, south 8.

-- The ship starts by facing east.

-- (E,0 + 10)       
-- (E,10)     (N, 3)
-- (E,10 + 7) (N, 3)
-- (E,17)     (N, 3)
-- (E,17)(N, 11 - 3)

{-
east = positive x
west = negative x

north = positive y
south = negative y

          ^N
          |
          |
          |
<---------+--------->
W         |        E
          |
          |S
          V

east 17, south 8
17 + 8 = 25

17x, -8y
-}
parsed :: [(Action, Integer)]
parsed =       -- (0, 0)  E                    
  [ (F, 10),   -- (10, 0) E                               
    (N, 3),    -- (10, 3) E                                  
    (F, 7),    -- (17, 3) E                                  
    (R, 90),   -- (17, 3) S                                  
    (F, 11)    -- (17, 8) S => abs $ 3 - 11 = 8
  ]

-- answer :: ((Integer, Integer), Action)
answer :: Foldable t => t (Action, Integer) -> ((Integer, Integer), Action)
answer = foldl process ((0,0), E)

-- !!!!!!!!!!! ((1,-363),S) = 364 is the answer
-- ((465,91),S) 465 + 91 = 556 your answer is too high
process :: ((Integer, Integer), Action) -> (Action, Integer) -> ((Integer, Integer), Action)
process ((x, y), dest) (orig, i) = case (orig, dest) of
    (N, _) -> ((x          , y + i), dest) -- action N when heading E 
    (S, _) -> ((x,  y - i)    , dest)
    (E, _) -> ((x + i,  y)    , dest)
    (W, _) -> (( x - i, y)    , dest)
    (F, E) -> ((x + i,  y)    , dest)
    (F, W) -> (( x - i, y)    , dest)
    (F, S) -> ((x    ,  y - i), dest)
    (F, N) -> ((x    ,  y + i), dest)
    (L, d) -> ((x    , y)     , rotate (orig, i) d)
    (R, d) -> ((x    , y)     , rotate (orig, i) d)
    err -> error $ "oh no!! a call to " ++ show err ++ " has just exploded"

-- 90,180,270 => 90*1, 90*2 , 90*3
-- a = R | L ... i = i `div` 90 = 1 | 2 | 3
-- (rotate90 (R, 90) . rotate90 (R, 90)) :: Action -> Action
-- (rotate90 (R, 90) . rotate90 (R, 90) . rotate90 (R, 90)) :: Action -> Action
rotate :: (Action, Integer) -> Action -> Action
rotate (a, 90) a1 = rotate90 (a, 90) a1
rotate (a, 180) a1 = (rotate90 (a, 90) . rotate90 (a, 90)) a1
rotate (a, 270) a1 = (rotate90 (a, 90) . rotate90 (a, 90) . rotate90 (a, 90)) a1
rotate (a, _) b = error $ "wanted to rotate" ++ show a ++ " to " ++ show b

rotate90 :: (Action, Integer) -> Action -> Action --90,180,270 => 90*1, 90*2 , 90*3
rotate90 (R, 90) E = S
rotate90 (L, 90) E = N
rotate90 (R, 90) N = E
rotate90 (L, 90) N = W
rotate90 (R, 90) W = N
rotate90 (L, 90) W = S
rotate90 (R, 90) S = W
rotate90 (L, 90) S = E
rotate90 (a, _) b = error $ "wanted to rotate90" ++ show a ++ " to " ++ show b

parser :: Functor f => f [Char] -> f (Action, Integer)
parser = fmap (\str -> (mkAction $ head str, read (tail str) :: Integer))

-- |
-- >>> answerExample
-- ((17,-8),S)
answerExample :: IO ((Integer, Integer), Action)
answerExample = do
  inp <- lines <$> readFile "src/year2020/Day12/example.txt"
  return $ answer $ parser inp

-- |
-- >>> answerInput
-- ((1,-363),S)
answerInput :: IO ((Integer, Integer), Action)
answerInput = do
  inp <- lines <$> readFile "src/year2020/Day12/input.txt"
  return $ answer $ parser inp
