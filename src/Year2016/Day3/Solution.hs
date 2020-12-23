module Year2016.Day3.Solution where

import Data.List ( permutations, transpose )

import qualified Data.Text as T
import qualified Data.Text.IO as DTIO

qwer :: [Int] -> [Bool]
qwer e = fmap (\[a,b,c] -> a + b > c) (permutations e)

parse :: T.Text -> [Int]
parse ls =  (\str -> read ((T.unpack . T.strip) str) :: Int) <$>  (filter (/=T.pack"") $ T.splitOn (T.pack " ") ls)

-- |
-- >>> answerInput
-- 862
answerInput :: IO Int
answerInput = do
  inp <- T.lines <$> DTIO.readFile "src/year2016/Day3/input.txt"
  return $ length $ filter (all (== True)) (fmap (qwer . parse) inp)

go :: [Int] -> [Bool]
go [] = []
go [_] = []
go [_, _] = []
go ns = all (== True) (qwer $ take 3 ns) : go (drop 3 ns)


-- |
-- >>> answerInput2
-- 1577
answerInput2 :: IO Int
answerInput2 = do
  inp <- T.lines <$> DTIO.readFile "src/year2016/Day3/input.txt"
  return $ length $ filter (== True) (go $ concat $ transpose (fmap parse inp))