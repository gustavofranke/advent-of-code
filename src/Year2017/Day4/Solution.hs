module Year2017.Day4.Solution where

import qualified Data.Text as T
import qualified Data.Text.IO as DTIO
import Data.List ( group, nub, sort )

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
-- abcde fghij is a valid passphrase.
-- abcde xyz ecdab is not valid - the letters from the third word can be rearranged to form the first word.
-- a ab abc abd abf abj is a valid passphrase, because all letters need to be used when forming another word.
-- iiii oiii ooii oooi oooo is valid.
-- oiii ioii iioi iiio is not valid - any of these words can be rearranged to form any other word.

-- |
-- >>> isValid2 $ parse (T.pack "abcde fghij")
-- True

-- >>> isValid2 $ parse (T.pack "abcde xyz ecdab")
-- False

-- >>> isValid2 $ parse (T.pack "a ab abc abd abf abj")
-- True

-- >>> isValid2 $ parse (T.pack "iiii oiii ooii oooi oooo")
-- True

-- >>> isValid2 $ parse (T.pack "oiii ioii iioi iiio")
-- False
isValid2 :: [T.Text] -> Bool
isValid2 ls = lenls == lensrt
    where
        srt = nub (fmap (sort . T.unpack) ls)
        lenls = length ls
        lensrt = length srt

-- |
-- >>> answerInput2
-- 223
answerInput2 :: IO Int
answerInput2 = do
  inp <- T.lines <$> DTIO.readFile "src/year2017/Day4/input.txt"
  return $ length $ filter (== True) (isValid2 . parse <$> inp)
