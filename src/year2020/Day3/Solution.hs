module Day3.Solution where

import Inputs ( day3 )

--    Representation of coordinates of a cell within a grid.
  
--        1   2   3   4   5 .. n
--    1 a11 a12 a13 a14 a15
--    2 a21 a22 a23 a24 a25
--    3 a31 a32 a33 a34 a35
--    4 a41 a42 a43 a44 a45
--    5 a51 a52 a53 a55 a55
--    .
--    .
--    m

day3Example :: [[Char]]
day3Example = [
  cycle "..##.......", 
  cycle "#...#...#..", 
  cycle ".#....#..#.", 
  cycle "..#.#...#.#", 
  cycle ".#...##..#.", 
  cycle "..#.##.....", 
  cycle ".#.#.#....#", 
  cycle ".#........#", 
  cycle "#.##...#...", 
  cycle "#...##....#", 
  cycle ".#..#...#.#"
    ]

data Pos = Pos { x :: Int, y :: Int } deriving Show

-- |
-- >>> goRight (Pos 1 1)
-- Pos {x = 1, y = 2}
goRight :: Pos -> Pos
goRight (Pos a b) = Pos a (b + 1)

-- |
-- >>> goDown (Pos 1 1)
-- Pos {x = 2, y = 1}
goDown :: Pos -> Pos
goDown (Pos a b) = Pos (a + 1) b

-- |
-- >>> slope (Pos 1 1)
-- Pos {x = 2, y = 4}
slope :: Pos -> Pos
slope = goRight . goRight . goRight . goDown

slopeN :: [Pos]
slopeN = iterate slope (Pos 2 4)

-- |
-- given the input matrix
-- and a Pos
-- return the content of the cell
-- >>> route [cycle "..##.......", cycle "#...#...#..", cycle ".#....#..#."] (Pos 2 4)
-- '.'
-- >>> route [cycle "..##.......", cycle "#...#...#..", cycle ".#....#..#."] (Pos 3 2)
-- '#'
route :: [[a]] -> Pos -> a
route grid (Pos a b) = (grid !! (a - 1)) !! (b - 1)

-- |
-- >>> day3a day3Example
-- 7
-- 
-- >>> day3a Inputs.day3
-- 189
day3a :: [[Char]] -> Int
day3a grid = length trees
    where
        gridLimit = length grid - 1
        stepCells = map (route grid) (take gridLimit slopeN)
        trees = filter (== '#') stepCells

------------------------

slope1 :: Pos -> Pos
slope1 = goRight . goDown

slope2 :: Pos -> Pos
slope2 = goRight . goRight . goRight . goRight . goRight . goDown

slope3 :: Pos -> Pos
slope3 = goRight . goRight . goRight . goRight . goRight . goRight . goRight . goDown

slope4 :: Pos -> Pos
slope4 = goRight . goDown . goDown

slopeNB :: (Pos -> Pos) -> [Pos]
slopeNB slp = tail $ iterate slp (Pos 1 1)

day3b :: [[Char]] -> (Pos -> Pos) -> Int
day3b grid slp = length trees
    where
        gridLimit = length grid - 1
        stepCells = map (route grid) (take gridLimit (slopeNB slp))
        trees = filter (== '#') stepCells

day3bSlope4 :: [[Char]] -> (Pos -> Pos) -> Int
day3bSlope4 grid slp = length trees
    where
        gridLimit = length grid `div` 2
        stepCells = map (route grid) (take gridLimit (slopeNB slp))
        trees = filter (== '#') stepCells

day3bSolution :: [[Char]] -> Int
day3bSolution grid = day3b grid slope1 * day3b grid slope * day3b grid slope2 * day3b grid slope3 * day3bSlope4 grid slope4

-- |
-- >>> day3bSolutionExample
-- 336
day3bSolutionExample :: Int
day3bSolutionExample = day3bSolution day3Example

-- |
-- >>> day3bSolutionAnswer
-- 1718180100
day3bSolutionAnswer :: Int
day3bSolutionAnswer = day3bSolution Inputs.day3

------------------------
-- |
-- >>> slopeTwice (Pos 1 1)
-- Pos {x = 3, y = 7}
slopeTwice :: Pos -> Pos
-- slopeTwice = slope . slope
-- slopeTwice = foldr (.) slope [slope]
slopeTwice = foldr (.) slope (replicate 1 slope)

-- |
-- >>> slopeThrice (Pos 1 1)
-- Pos {x = 4, y = 10}
slopeThrice :: Pos -> Pos
-- slopeThrice = slope . slope . slope
slopeThrice = foldr (.) slope (replicate 2 slope)
------------------------