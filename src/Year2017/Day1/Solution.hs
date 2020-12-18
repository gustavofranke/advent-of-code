module Year2017.Day1.Solution where

import Data.Char ( digitToInt )

-- |
-- >>> answerPart1 [1, 1, 2, 2]
-- 3
-- >>> answerPart1 [1, 1, 1, 1]
-- 4
-- >>> answerPart1 [1, 2, 3, 4]
-- 0
-- >>> answerPart1 [9, 1, 2, 1, 2, 1, 2, 9]
-- 9
answerPart1 :: [Int] -> Int
answerPart1 qs = go $ qs ++ [head qs]
  where
    go [] = 0
    go [_] = 0
    go (l1 : l2 : ls) =
      if l1 == l2
        then l1 + go (l2 : ls)
        else go (l2 : ls)

-- |
-- >>> part1
-- 1393
part1 :: IO Int
part1 = do
  inp <- lines <$> readFile "src/Year2017/Day1/input.txt"
  return $ answerPart1 $ digitToInt <$> head inp

-- |
-- >>> answerPart2 [1,2,1,2]
-- 6
-- >>> answerPart2 [1,2,2,1]
-- 0
-- >>> answerPart2 [1,2,3,4,2,5]
-- 4
-- >>> answerPart2 [1,2,3,1,2,3]
-- 12
-- >>> answerPart2 [1,2,1,3,1,4,1,5]
-- 4
answerPart2 :: [Int] -> Int
answerPart2 qs = go lengthForGo listForGo
  where
    lengthForGo = length qs `div` 2
    listForGo = qs ++ take (lengthForGo + 1) qs
    go _ [] = 0
    go _ [_] = 0
    go i (l1 : ls) =
      let l2 = if i < length (l1 : ls) -1 then (l1 : ls) !! i else -999
       in if l1 == l2
            then l1 + go i ls
            else go i ls

-- |
-- >>> part2
-- 1292
part2 :: IO Int
part2 = do
  inp <- lines <$> readFile "src/Year2017/Day1/input.txt"
  return $ answerPart2 $ digitToInt <$> head inp