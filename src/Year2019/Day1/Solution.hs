module Year2019.Day1.Solution where


-- For a mass of 12, divide by 3 and round down to get 4, then subtract 2 to get 2.
-- For a mass of 14, dividing by 3 and rounding down still yields 4, so the fuel required is also 2.
-- For a mass of 1969, the fuel required is 654.
-- For a mass of 100756, the fuel required is 33583.

-- |
-- >>> findMass 12
-- 2
-- 
-- >>> findMass 14
-- 2
-- 
-- >>> findMass 1969
-- 654
-- 
-- >>> findMass 100756
-- 33583
findMass :: Int -> Int
findMass y = (y `div` 3) - 2

allMass :: [Int] -> [Int]
allMass = fmap findMass

example :: [Int]
example = [12,14,1969,100756]

-- >>> part1
-- 3422661
part1 :: IO Int
part1 = do
  inp <- lines <$> readFile "src/year2020/Day15/2019-input.txt"
  return $ sum $ fmap (findMassRec . (\ x -> read x :: Int)) inp

findMassRec :: Int -> Int
findMassRec m = if findMass m < 0 then 0 else findMass m + (findMassRec . findMass) m

-- >>> part2
-- 5131103
part2 :: IO Int
part2 = do
  inp <- lines <$> readFile "src/year2019/Day1/input.txt"
  return $ sum $ fmap (findMassRec . (\ x -> read x :: Int)) inp