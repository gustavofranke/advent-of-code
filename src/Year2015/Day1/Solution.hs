module Year2015.Day1.Solution where

-- ( => go up one floor
-- ) => go down one floor

-- |
-- >>> findFloor "(())"
-- 0
-- >>> findFloor "()()"
-- 0
-- >>> findFloor "((("
-- 3
-- >>> findFloor "(()(()("
-- 3
-- >>> findFloor "))((((("
-- 3
-- >>> findFloor "())"
-- -1
-- >>> findFloor "))("
-- -1
-- >>> findFloor ")))"
-- -3
-- >>> findFloor ")())())"
-- -3
findFloor :: [Char] -> Int
findFloor [] = 0
findFloor ('(' : ps) = 1 + findFloor ps
findFloor (')' : ps) = -1 + findFloor ps
findFloor (p : _) = error ("invalid char" ++ show p)

-- |
-- >>> part1
-- 232
part1 :: IO Int
part1 = do
  inp <- lines <$> readFile "src/year2015/Day1/input.txt"
  return $ findFloor $ head inp

------------------
-- |
-- >>> findBasementPos ")"
-- 1

-- >>> findBasementPos "()())"
-- 5
findBasementPos :: [Char] -> Int
findBasementPos = go (0 :: Int) (0 :: Int)
  where
    go res pos []         = if res == -1 then pos else 0
    go res pos ('(' : ps) = if res == -1 then pos else go (res + 1) (pos + 1) ps
    go res pos (')' : ps) = if res == -1 then pos else go (res - 1) (pos + 1) ps
    go _ _ (p : _) = error ("invalid char" ++ show p)

-- |
-- >>> part2
-- 1783
part2 :: IO Int
part2 = do
  inp <- lines <$> readFile "src/year2015/Day1/input.txt"
  return $ findBasementPos $ head inp
