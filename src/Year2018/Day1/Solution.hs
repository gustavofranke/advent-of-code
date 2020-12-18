module Year2018.Day1.Solution where

-- >>> ex
-- 2
ex :: Int
ex = sum [0, 1, -2, 3, 1, 1 -2]

readFrequency :: [Char] -> Int
readFrequency ('+' : xs) = read xs
readFrequency str@('-' : _) = read str
readFrequency xs = error ("can't parse" ++ xs)

-- |
-- >>> part1
-- 408
part1 :: IO Int
part1 = do
  inp <- lines <$> readFile "src/year2018/Day1/input.txt"
  return $ sum $ fmap readFrequency inp

---------------
-- |
-- >>> answer [1, -2, 3, 1, 1 -2]
-- 2
-- >>> answer [1, -1]
-- 0
-- >>> answer [3, 3, 4, -2, -4]
-- 10
-- >>> answer [-6, 3, 8, 5, -6]
-- 5
-- >>> answer [7, 7, -2, -7, -4]
-- 14
answer :: [Int] -> Int
answer xs = go 0 (concat $ repeat xs) [0]
  where
    go _ [] _ = error "oh no!"
    go acc (l : ls) visits =
      let newAcc = l + acc
       in if newAcc `elem` visits
            then newAcc
            else go newAcc ls (newAcc : visits)

-- |
-- part2
-- 55250
part2 :: IO Int
part2 = do
  inp <- lines <$> readFile "src/year2018/Day1/input.txt"
  return $ answer $ fmap readFrequency inp

