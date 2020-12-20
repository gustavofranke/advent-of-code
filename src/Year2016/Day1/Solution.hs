{-# LANGUAGE OverloadedStrings #-}

module Year2016.Day1.Solution where

import qualified Data.Text as T
import qualified Data.Text.IO as DTIO

-- start at the given coordinates (where you just landed) and face North.
-- Then, follow the provided sequence: either turn left (L) or right (R) 90 degrees,
-- then walk forward the given number of blocks, ending at a new intersection.

-- There's no time to follow such ridiculous instructions on foot, though,
-- so you take a moment and work out the destination.
-- Given that you can only walk on the street grid of the city,
-- how far is the shortest path to the destination?

-- For example:
-- Following R2, L3 leaves you 2 blocks East and 3 blocks North, or 5 blocks away.
-- R2, R2, R2 leaves you 2 blocks due South of your starting position, which is 2 blocks away.
-- R5, L5, R5, R3 leaves you 12 blocks away.

{-
                  ^ y (N)
                  |
                  |
                  |
       <----------|---------->
      -x (W)      |          +x (E)
                  |
                  |
                  v -y (S)
-}

-- R2, L3 => 2 blocks East and 3 blocks North => (2x, 3y) => (abs 2-0, abs 3-0) = 2+3 = 5 => 5
-- ex1 :: [(Turn, Int)]
-- ex1 = [(R, 2), (L, 3)]

-- R2, R2, R2 => 2 blocks due South => (0, -2 ) => 0+2=2, which is 2 blocks away
-- ex2 :: [(Turn, Int)]
-- ex2 = [(R, 2), (R, 2), (R, 2)]

-- ex3 :: [(Turn, Int)]
-- ex3 = [(R, 5), (L, 5), (R, 5), (R, 3)]

data Turn = R | L deriving (Show)

mkTurn :: Char -> Turn
mkTurn 'R' = R
mkTurn 'L' = L
mkTurn x = error $ "OH NO invalid " ++ show x

data Dire = N | S | W | E deriving (Show)

face :: Dire -> (Turn, Int) -> (Int, Int) -> (Dire, (Int, Int))
face N (R, n) (x, y) = (E, (x + n, y))
face N (L, n) (x, y) = (W, (x - n, y))
face S (R, n) (x, y) = (W, (x - n, y)) --
face S (L, n) (x, y) = (E, (x + n, y)) --
face E (R, n) (x, y) = (S, (x, y - n))
face E (L, n) (x, y) = (N, (x, y + n))
face W (R, n) (x, y) = (N, (x, y + n))
face W (L, n) (x, y) = (S, (x, y - n))

answer1 :: Foldable t => t (Turn, Int) -> (Dire, (Int, Int))
answer1 = foldl (\(d, (x, y)) (t, i) -> face d (t, i) (x, y)) (N, (0, 0))

-- |
-- >>> ans [(R, 2), (L, 3)]
-- 5
-- >>> ans [(R, 2), (R, 2), (R, 2)]
-- 2
-- >>> ans [(R, 5), (L, 5), (R, 5), (R, 3)]
-- 12
ans :: [(Turn, Int)] -> Int
ans ls = manhattan (0, 0) $ snd $ answer1 ls

-- |
-- >>> manhattan (2, 3) (0,0)
-- 5
-- >>> manhattan (0,0) (2, 3)
-- 5
manhattan :: Num a => (a, a) -> (a, a) -> a
manhattan (x1, y1) (x2, y2) = abs (x1 - x2) + abs (y1 - y2)

-- |
-- >>> parse (T.pack "R2, L3")
-- [(R,2),(L,3)]
-- >>> parse (T.pack "R2, R2, R2")
-- [(R,2),(R,2),(R,2)]
-- >>> parse (T.pack "R5, L5, R5, R3")
-- [(R,5),(L,5),(R,5),(R,3)]
parse :: T.Text -> [(Turn, Int)]
parse ls =
  ( \str ->
      let s = T.strip str
          turn = mkTurn $ T.head s
          numb = (read (T.unpack (T.tail s)) :: Int)
       in (turn, numb)
  )
    <$> T.splitOn "," ls

-- | 508 is too high
-- >>> answerInput
-- 234
answerInput :: IO Int
answerInput = do
  inp <- T.lines <$> DTIO.readFile "src/year2016/Day1/input.txt"
  return $ ans $ parse (head inp)
