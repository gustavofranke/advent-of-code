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

