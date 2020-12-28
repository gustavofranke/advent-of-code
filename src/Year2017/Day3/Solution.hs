module Year2017.Day3.Solution where

import qualified Data.Map.Strict as M
import Year2020.Day3.Solution (Pos (Pos), goDown, goRight)

-- Representation of coordinates of a cell within a grid.
--
--     1   2   3   4   5 .. n
-- 1 a11 a12 a13 a14 a15
-- 2 a21 a22 a23 a24 a25
-- 3 a31 a32 a33 a34 a35
-- 4 a41 a42 a43 a44 a45
-- 5 a51 a52 a53 a55 a55
-- .
-- .
-- m

-- 17  16  15  14  13
-- 18   5   4   3  12
-- 19   6   1   2  11
-- 20   7   8   9  10
-- 21  22  23---> ...

-- inp = 347991

-- Data from square 1 is carried 0 steps, since it's at the access port.
-- Data from square 12 is carried 3 steps, such as: down, left, left.
-- Data from square 23 is carried only 2 steps: up twice.
-- Data from square 1024 must be carried 31 steps.

-- find grid size, given an input
-- find grid center x, y, given a size
-- find input grid position in the grid
-- manhattan center inputPosition

-- | 1x1 3x3 5x5 7x7 ...
-- >>> gridSize 1
-- 1
-- >>> gridSize 12
-- 5
-- >>> gridSize 23
-- 5
-- >>> gridSize 1024
-- 33
gridSize :: (Integral p, Integral a) => a -> p
gridSize inp = if even size then size + 1 else size
  where
    size = ceiling (sqrt (fromIntegral inp) :: Double)

-- |
-- >>> gridCentre 5
-- (3,3)
-- >>> gridCentre 1
-- (1,1)
-- >>> gridCentre 33
-- (17,17)
gridCentre :: (RealFrac a, Integral b) => a -> (b, b)
gridCentre gridSz = (pos, pos)
  where
    pos = ceiling (gridSz / 2)

manhattan :: Num a => (a, a) -> (a, a) -> a
manhattan (x1, y1) (x2, y2) = abs (x1 - x2) + abs (y1 - y2)

goUp :: Pos -> Pos
goUp (Pos a b) = Pos (a - 1) b

goLeft :: Pos -> Pos
goLeft (Pos a b) = Pos a (b - 1)

counterClockwiseOutside :: [Pos -> Pos]
counterClockwiseOutside = (concat . repeat) [goRight, goUp, goLeft, goDown]

repetitions :: Int -> [Int]
repetitions gs = concatMap (\x -> [x, x]) [1 .. gs]

spiral :: Int -> [Pos -> Pos]
spiral gs = concatMap (\(f, i) -> replicate i f) (counterClockwiseOutside `zip` repetitions gs)

-- undefined --  fmap (\(_, i) -> undefined)
-- fmap (\(x, i) -> foldl1 (.) sp pos) (sp `zip` [0 ..] !! location)
populateGrid :: Pos -> Int -> Int -> Maybe Pos
populateGrid pos gs location = undefined
  where
    sp = spiral gs

positionsByLocations :: Pos -> Int -> Int -> M.Map Int Pos
positionsByLocations centre gs location =
  if location == 1
    then M.fromList [(1, centre)]
    else case populateGrid centre gs location of
      Nothing -> M.empty
      Just p -> M.fromList [(location, p)]

-- answer loc = positionsByLocations centre size loc
--   where
--     size = gridSize loc
--     centre = gridCentre loc
