module Year2020.Day11.Solution where

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

-- position is either floor (.), an empty seat (L), or an occupied seat (#)

import qualified Data.Map.Strict as Map
import Data.Maybe

----------------------------------------
example :: [[Char]]
example =
  [ "L.LL.LL.LL", -- #.##.##.## -- #.LL.L#.## -- #.##.L#.##  #.#L.L#.## -- #.#L.L#.##
    "LLLLLLL.LL", -- #######.## -- #LLLLLL.L# -- #L###LL.L#  #LLL#LL.L# -- #LLL#LL.L#
    "L.L.L..L..", -- #.#.#..#.. -- L.L.L..L.. -- L.#.#..#..  L.L.L..#.. -- L.#.L..#..
    "LLLL.LL.LL", -- ####.##.## -- #LLL.LL.L# -- #L##.##.L#  #LLL.##.L# -- #L##.##.L#
    "L.LL.LL.LL", -- #.##.##.## -- #.LL.LL.LL -- #.##.LL.LL  #.LL.LL.LL -- #.#L.LL.LL
    "L.LLLLL.LL", -- #.#####.## -- #.LLLL#.## -- #.###L#.##  #.LL#L#.## -- #.#L#L#.##
    "..L.L.....", -- ..#.#..... -- ..L.L..... -- ..#.#.....  ..L.L..... -- ..L.L.....
    "LLLLLLLLLL", -- ########## -- #LLLLLLLL# -- #L######L#  #L#LLLL#L# -- #L#L##L#L#
    "L.LLLLLL.L", -- #.######.# -- #.LLLLLL.L -- #.LL###L.L  #.LLLLLL.L -- #.LLLLLL.L
    "L.LLLLL.LL" -- #.#####.## -- #.#LLLL.## -- #.#L###.##  #.#L#L#.## -- #.#L#L#.##
  ]

matrix :: (Ord a1, Ord b, Num a1, Num b, Enum a1, Enum b) => [[a2]] -> Map.Map (a1, b) a2
matrix ls =
  Map.fromList
    [ ((row, col), b) | (row, line) <- zip [0 ..] ls, (col, b) <- zip [0 ..] line
    ]

-- a = matrix example
a :: Map.Map (Integer, Integer) Char
a = Map.fromList [
     ((0,0),'L'),((0,1),'.'),((0,2),'L'),((0,3),'L'),((0,4),'.'),((0,5),'L'),((0,6),'L'),((0,7),'.'),((0,8),'L'),((0,9),'L'),
     ((1,0),'L'),((1,1),'L'),((1,2),'L'),((1,3),'L'),((1,4),'L'),((1,5),'L'),((1,6),'L'),((1,7),'.'),((1,8),'L'),((1,9),'L'),
     ((2,0),'L'),((2,1),'.'),((2,2),'L'),((2,3),'.'),((2,4),'L'),((2,5),'.'),((2,6),'.'),((2,7),'L'),((2,8),'.'),((2,9),'.'),
     ((3,0),'L'),((3,1),'L'),((3,2),'L'),((3,3),'L'),((3,4),'.'),((3,5),'L'),((3,6),'L'),((3,7),'.'),((3,8),'L'),((3,9),'L'),
     ((4,0),'L'),((4,1),'.'),((4,2),'L'),((4,3),'L'),((4,4),'.'),((4,5),'L'),((4,6),'L'),((4,7),'.'),((4,8),'L'),((4,9),'L'),
     ((5,0),'L'),((5,1),'.'),((5,2),'L'),((5,3),'L'),((5,4),'L'),((5,5),'L'),((5,6),'L'),((5,7),'.'),((5,8),'L'),((5,9),'L'),
     ((6,0),'.'),((6,1),'.'),((6,2),'L'),((6,3),'.'),((6,4),'L'),((6,5),'.'),((6,6),'.'),((6,7),'.'),((6,8),'.'),((6,9),'.'),
     ((7,0),'L'),((7,1),'L'),((7,2),'L'),((7,3),'L'),((7,4),'L'),((7,5),'L'),((7,6),'L'),((7,7),'L'),((7,8),'L'),((7,9),'L'),
     ((8,0),'L'),((8,1),'.'),((8,2),'L'),((8,3),'L'),((8,4),'L'),((8,5),'L'),((8,6),'L'),((8,7),'L'),((8,8),'.'),((8,9),'L'),
     ((9,0),'L'),((9,1),'.'),((9,2),'L'),((9,3),'L'),((9,4),'L'),((9,5),'L'),((9,6),'L'),((9,7),'.'),((9,8),'L'),((9,9),'L')]

-- If a seat is empty (L) and there are no occupied seats adjacent to it, the seat becomes occupied.
-- If a seat is occupied (#) and four or more seats adjacent to it are also occupied, the seat becomes empty.
-- Otherwise, the seat's state does not change.
-- Floor (.) never changes; seats don't move, and nobody sits on the floor.

goLeft :: Num b => (a, b) -> (a, b)
goLeft (a, b) = (a, b - 1)

goRight :: Num b => (a, b) -> (a, b)
goRight (a, b) = (a, b + 1)

goUp :: Num a => (a, b) -> (a, b)
goUp (a, b) = (a - 1, b)

goDown :: Num a => (a, b) -> (a, b)
goDown (a, b) = (a + 1, b)

goDiagUpLeft :: (Num a, Num b) => (a, b) -> (a, b)
goDiagUpLeft (a, b) = (a -1, b -1)

goDiagUpRight :: (Num a, Num b) => (a, b) -> (a, b)
goDiagUpRight (a, b) = (a -1, b + 1)

goDiagDownLeft :: (Num a, Num b) => (a, b) -> (a, b)
goDiagDownLeft (a, b) = (a + 1, b -1)

goDiagDownRight :: (Num a, Num b) => (a, b) -> (a, b)
goDiagDownRight (a, b) = (a + 1, b + 1)

-- If a seat is empty (L) and there are no occupied seats adjacent to it, the seat becomes occupied.
adjacent :: (Integer, Integer) -> Map.Map (Integer, Integer) Char -> Bool
adjacent pos mtx = all (== True) canBecomeOccup
  where
    canBecomeOccup = mapMaybe (\step -> (/= '#') <$> Map.lookup (step pos) mtx) steps

steps :: [(Integer, Integer) -> (Integer, Integer)]
-- steps = [goUp, goLeft, goDown, goDown, goRight, goRight, goUp, goUp]
steps = [goUp, goDown, goRight, goLeft, goDiagUpLeft, goDiagUpRight, goDiagDownLeft, goDiagDownRight]

-- If a seat is occupied (#) and four or more seats adjacent to it are also occupied, the seat becomes empty.
adjacent2 :: (Integer, Integer) -> Map.Map (Integer, Integer) Char -> Bool
adjacent2 pos mtx = length canBecomeOccup >= 4
  where
    canBecomeOccup = filter (== '#') $ mapMaybe (\step -> Map.lookup (step pos) mtx) steps

matrixRules :: Map.Map (Integer, Integer) Char -> Map.Map (Integer, Integer) Char
matrixRules matrix0 = Map.mapWithKey seatRules matrix0
  where
    seatRules k r
      | r == 'L' && adjacent k matrix0 = '#'
      | r == '#' && adjacent2 k matrix0 = 'L'
      | otherwise = r

chaos :: Map.Map (Integer, Integer) Char -> Map.Map (Integer, Integer) Char
chaos layout =
  if hasToContinue layout newLayout
    then chaos newLayout
    else newLayout
  where
    newLayout = matrixRules layout
    hasToContinue old new = old /= new

occupiedSeats :: Map.Map (Integer, Integer) Char -> Int
occupiedSeats seats = length $ filter (== '#') $ fmap snd $ Map.toList $ chaos seats

answer :: Map.Map (Integer, Integer) Char -> Int
answer layout = occupiedSeats $ chaos layout

-- |
-- >>> answerExample
-- 37
answerExample :: IO Int
answerExample = do
  inp <- lines <$> readFile "src/year2020/Day11/example.txt"
  return $ answer $ matrix inp

-- | 3254 is too high
-- >>> answerInput
-- 2113
answerInput :: IO Int
answerInput = do
  inp <- lines <$> readFile "src/year2020/Day11/input.txt"
  return $ answer $ matrix inp

{-

Mine       Solution
#.L#.L#.L# #.#L.L#.##
L#LLL#L.#L #LLL#LL.L#
#.#.#..#.. L.#.L..#..
L#L#.L#.L# #L##.##.L#
L.#L.#L.#L #.#L.LL.LL
#.L#LL#.L# #.#L#L#.##
..#.#..... ..L.L.....
L#L#LL#L## #L#L##L#L#
L.#LL#L#.L #.LLLLLL.L
#.#L#L#.#L #.#L#L#.##

#.L#.L#.L#L#LLL#L.#L#.#.#..#..L#L#.L#.L#L.#L.#L.#L#.L#LL#.L#..#.#.....L#L#LL#L##L.#LL#L#.L#.#L#L#.#L
#.#L.L#.###LLL#LL.L#L.#.L..#..#L##.##.L##.#L.LL.LL#.#L#L#.##..L.L.....#L#L##L#L##.LLLLLL.L#.#L#L#.##

-}
