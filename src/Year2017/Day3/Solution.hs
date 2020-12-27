module Year2017.Day3.Solution where

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
-- >>> gridCenter 5
-- (3,3)
-- >>> gridCenter 1
-- (1,1)
-- >>> gridCenter 33
-- (17,17)
gridCenter :: (RealFrac a, Integral b) => a -> (b, b)
gridCenter gridSz = (pos, pos)
    where
        pos = ceiling (gridSz / 2)

manhattan :: Num a => (a, a) -> (a, a) -> a
manhattan (x1, y1) (x2, y2) = abs (x1 - x2) + abs (y1 - y2)