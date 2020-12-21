{-# LANGUAGE OverloadedStrings #-}

module Year2015.Day3.Solution where

right :: Num a => (a, b) -> (a, b)
right (x, y) = (x + 1, y)

up :: Num b => (a, b) -> (a, b)
up (x, y) = (x, y + 1)

down :: Num b => (a, b) -> (a, b)
down (x, y) = (x, y -1)

left :: Num a => (a, b) -> (a, b)
left (x, y) = (x -1, y)

mkDire :: (Num b, Num a) => Char -> (a, b) -> (a, b)
mkDire '^' = up
mkDire 'v' = down
mkDire '>' = right
mkDire '<' = left
mkDire _ = error "bad direction"

parse :: [Char] -> [(Int, Int) -> (Int, Int)]
parse str = mkDire <$> str

-- > delivers presents to 2 houses: one at the starting location, and one to the east.

-- ^ >v< delivers presents to 4 houses in a square, including twice to the house at his starting/ending location.
--  ^v^v^v^v^v delivers a bunch of presents to some very lucky children at only 2 houses.

-- if not there (count + 1) and ADD to visits
-- if there (count + 0) and NOT ADD to visits
go :: [(Int, Int)] -> [(Int, Int) -> (Int, Int)] -> (Int, Int) -> Int -> Int
go _ [] _ count = count
go visits (f : fs) (x, y) count = if (f (x, y)) `elem` visits then go visits fs (f (x, y)) count else go ((f (x, y)) : visits) (fs) (f (x, y)) (count + 1)

-- |
-- >>> answerInput
-- 2572
answerInput = do
  inp <- lines <$> readFile "src/year2015/Day3/input.txt"
  return $ go [] (parse $ head inp) (0, 0) 0
-- ^ v delivers presents to 3 houses, because Santa goes north, and then Robo-Santa goes south.
--  ^>v< now delivers presents to 3 houses, and Santa and Robo-Santa end up back where they started.
--  ^v^v^v^v^v now delivers presents to 11 houses, with Santa going one direction and Robo-Santa going the other.

go2 visits [] _ = visits
go2 visits (f : fs) (x, y) =
  if f (x, y) `elem` visits
    then go2 visits fs (f (x, y))
    else go2 (f (x, y) : visits) fs (f (x, y))

go3 visits [] _ = visits
go3 visits (f : fs) (x, y) =
  if f (x, y) `elem` visits
    then go2 visits fs (f (x, y))
    else go2 (f (x, y) : visits) fs (f (x, y))

loop [] santa robot = (santa, robot)
loop [x2] santa robot = (santa, x2 : robot)
loop (x1 : x2 : xs) santa robot = loop xs (x1 : santa) (x2 : robot)

-- |
-- >>> part2 (parse "^v")
-- 3
-- >>> part2 (parse "^>v<")
-- 3
-- >>> part2 (parse "^v^v^v^v^v")
-- 11
part2 funcs = length goRobot
  where
    (santa, robot) = loop funcs [] []
    goSanta = go2 [(0, 0)] santa (0, 0)
    goRobot = go2 goSanta robot (0, 0)

-- | 2784 & 2678 are both too high
-- >>> answerInput2
-- 2678
answerInput2 = do
  inp <- lines <$> readFile "src/year2015/Day3/input.txt"
  return $ part2 (parse $ head inp)
