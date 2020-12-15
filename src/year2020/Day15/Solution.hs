module Day15.Solution where

import qualified Data.Map.Strict as Map

startingNbrs :: [Int]
startingNbrs = [0,3,6]

-- lookup 3 reference
-- Just 2 => 3 appears more than once in this collection, so list is not sufficient
reference :: [(Int, Int)] -- --> Int
reference = [
     (0, 1)
    ,(3, 2)
    ,(6, 3)
    ,(0, 4)
    ,(4-1, 5)
    ,(5-2, 6)
    ,(1, 7) -- 3 was just spoken twice in a row, last two turns are 1 turn apart, the 7th number spoken is 1.
    ,(0, 8) -- 1 is new, the 8th number spoken is 0
    ,(8-4, 9)
    ,(10, 0)
 ] 

-- |
-- 3 was read in turn 2
-- >>> Map.lookup 3 start
-- Just 2
-- 
-- 8 was not read
-- >>> Map.lookup 8 start
-- Nothing
start :: Map.Map Int Int
start = Map.fromList $ startingNbrs `zip` [1..]

-- unionWithKey (++)
reference2 = start `Map.union` Map.fromList [(4, 0)]
reference3 = Map.union start (Map.fromList [(4, 0)])

-- |
-- >>> length a
-- 6
a = Map.fromList reference
-- fromList [(0,8),(1,7),(3,6),(4,9),(6,3),(10,0)]

function :: Int -> [Int] -> [Int] -> [Int]
function _ a1 a2 = a1 ++ a2


-- fromListWithKey
b = Map.fromListWithKey function $ startingNbrs `zip` fmap (: []) [1..]

-- >>> c
-- fromList [(0,[1]),(3,[2]),(4,[0]),(6,[3])]
c :: Map.Map Int [Int]
c = b 
    `Map.union` Map.fromListWithKey function [(4-1, [5])]
    `Map.union` Map.fromListWithKey function [(4, [0])]
    `Map.union` Map.fromListWithKey function [(5-2, [6])]

{-
fromList [(0,[1]),(3,[2]),(6,[3])]
fromList [(0,[1]),(3,[2]),(4,[0]),(6,[3])]
-}

------
f _ a1 a2 = a1 ++ a2

-- >>> x
-- fromList [(3,[10,20]),(5,[10,20,10,5])]
x =
  Map.unionWithKey
    f
    (Map.fromListWithKey f [(5, [10]), (5, [10 + 10]), (2 + 1, [10 + 10]), (3, [10]), (5, [10])])
    (Map.fromList [(5, [5])])
