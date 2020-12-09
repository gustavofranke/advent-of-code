module Day9.Solution where

import Data.List ( sort )

-- |
-- >>> isValid [35,20,15,25,47] 40
-- True
-- >>> isValid [20,15,25,47,40] 62
-- True
-- >>> isValid [15,25,47,40,62] 55
-- True
-- >>> isValid [25,47,40,62,55] 65
-- True
-- >>> isValid [95,102,117,150,182] 127
-- False
-- >>> isValid [102,117,150,182,127] 219
-- True
isValid :: (Eq a, Num a) => [a] -> a -> Bool
isValid pre r = r `elem` sums
  where
    sums = [x + y | x <- pre, y <- pre]

day9a :: (Eq a, Num a) => Int -> [a] -> [(a, Bool)]
day9a _ [] = []
day9a preLenght ls@(_ : xs) = filter (not . snd) $ (r, isValid pre r) : day9a preLenght xs
  where
    pre = take preLenght ls
    r = ls !! max 0 preLenght -- fails like [(127,False)*** Exception: Prelude.!!: index too large, forcing me to `return $ head $ day9a ...`

-- |
-- >>> example
-- (127,False)
example :: IO (Int, Bool)
example = do
  inp <- lines <$> readFile "src/year2020/Day9/example.txt"
  return $ head $ day9a 5 (fmap (\x -> read x :: Int) inp)

-- |
-- >>> part1Answer
-- (104054607,False)
--
-- Answer is 104054607
part1Answer :: IO (Int, Bool)
part1Answer = do
  inp <- lines <$> readFile "src/year2020/Day9/input.txt"
  return $ head $ day9a 25 (fmap (\x -> read x :: Int) inp)

----------------------------------------------
contiguous :: Int -> [Int] -> [Int] -> [Int]
contiguous _ sequen [] = sequen
contiguous number sequen (l : ls) = findSeq number sequen (l : ls)
  where
    findSeq :: Int -> [Int] -> [Int] -> [Int]
    findSeq _ sol [] = sol
    findSeq n sol (x : xs)
      | sum sol == n = sol
      | sum (x : sol) == n = sol ++ [x]
      | sum (x : sol) <= n = findSeq n (sol ++ [x]) xs
      | otherwise = contiguous n [] ls

-- | Answer is 4574403 + 9361394 = 13935797
-- >>> part2Answer
-- 13935797
part2Answer :: IO Int
part2Answer = do
  inp <- lines <$> readFile "src/year2020/Day9/input.txt"
  let numbers = fmap (\x -> read x :: Int) inp
  return $ day9b numbers

day9b :: [Int] -> Int
day9b ls = mini + maxi
  where
    contiguousSet = sort $ contiguous 104054607 [] ls
    mini = minimum contiguousSet
    maxi = maximum contiguousSet
