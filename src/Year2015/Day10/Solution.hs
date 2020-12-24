module Year2015.Day10.Solution where

import Data.List ( group, nub )

-- 1 becomes 11 (1 copy of digit 1).
-- 11 becomes 21 (2 copies of digit 1).
-- 21 becomes 1211 (one 2 followed by one 1).
-- 1211 becomes 111221 (one 1, one 2, and two 1s).
-- 111221 becomes 312211 (three 1s, two 2s, and one 1).

-- |
-- >>> asdf "1"
-- "11"
-- >>> asdf "11"
-- "21"
-- >>> asdf "21"
-- "1211"
-- >>> asdf "1211"
-- "111221"
-- >>> asdf "111221"
-- "312211"
asdf :: [Char] -> [Char]
asdf nbr = concatMap (\ns -> show (length ns) ++ nub ns) $ group nbr

-- |
-- >>> length $ answer 40
-- 360154
-- >>> length $ answer 50
-- 5103798
answer :: Int -> [Char]
answer rep = foldl (\a f -> f a) "1113122113" (replicate rep asdf) --"1113122113"

-- |
-- >>> length $ go "1113122113" 40
-- 360154
-- >>> length $ go "1113122113" 50
-- 5103798
go :: (Eq t, Num t) => [Char] -> t -> [Char]
go str ctr
    | ctr == 0 = str 
    | otherwise = go (asdf str) (ctr -1)