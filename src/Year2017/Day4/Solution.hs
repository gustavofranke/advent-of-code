module Year2017.Day4.Solution where

import qualified Data.Text as T
import qualified Data.Text.IO as DTIO
import Data.List

-- aa bb cc dd ee  is valid.
-- aa bb cc dd aa  is not valid - the word aa appears more than once.
-- aa bb cc dd aaa is valid - aa and aaa count as different words.

-- |
-- >>> parse $ T.pack "aa bb cc dd ee"
-- ["aa","bb","cc","dd","ee"]
-- >>> parse $ T.pack "aa bb cc dd aa"
-- ["aa","bb","cc","dd","aa"]
-- >>> parse $ T.pack "aa bb cc dd aaa"
-- ["aa","bb","cc","dd","aaa"]
parse :: T.Text -> [T.Text]
parse = T.splitOn (T.pack " ")

isValid :: Ord a => [a] -> Bool
isValid passwd = not (any (\ ls -> length ls > 1) ((group . sort) passwd))

-- | 1000 is too high
-- >>> answerInput
-- 451
answerInput :: IO Int
answerInput = do
  inp <- T.lines <$> DTIO.readFile "src/year2017/Day4/input.txt"
  return $ length $ filter (== True) (isValid . parse <$> inp)
------------
