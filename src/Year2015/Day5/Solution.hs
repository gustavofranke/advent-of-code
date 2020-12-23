module Year2015.Day5.Solution where

import Data.List

-- A nice string is one with all of the following properties:

-- It contains at least three vowels (aeiou only), like aei, xazegov, or aeiouaeiouaeiou.
-- It contains at least one letter that appears twice in a row, like xx, abcdde (dd), or aabbccdd (aa, bb, cc, or dd).
-- It does not contain the strings ab, cd, pq, or xy, even if they are part of one of the other requirements.
-- For example:

-- ugknbfddgicrmopn is nice because it has at least three vowels (u...i...o...), a double letter (...dd...), and none of the disallowed substrings.
-- aaa is nice because it has at least three vowels and a double letter, even though the letters used by different rules overlap.
-- jchzalrnumimnmhp is naughty because it has no double letter.
-- haegwjzuvuyypxyu is naughty because it contains the string xy.
-- dvszwmarrgswjxmb is naughty because it contains only one vowel.

-- |
-- >>> atLeastThreeVowels "aei"
-- True
-- >>> atLeastThreeVowels "xazegov"
-- True
-- >>> atLeastThreeVowels "aeiouaeiouaeiou"
-- True
atLeastThreeVowels :: [Char] -> Bool
atLeastThreeVowels str = length vowels >= 3
    where
        vowels = fst $ partition (\c -> c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') str

-- |
-- >>> appearsTwice "xx"
-- True
-- >>> appearsTwice "abcdde"
-- True
-- >>> appearsTwice "aabbccdd"
-- True
appearsTwice :: [Char] -> Bool
appearsTwice a = or (fmap (uncurry (==)) (a `zip` tail a))

-- |
-- ab, cd, pq, or xy
-- >>> weirdStrings "haegwjzuvuyypxyu"
-- False
-- >>> weirdStrings "xy"
-- False
-- >>> weirdStrings "aaxybb"
-- False
-- >>> weirdStrings "bc"
-- True
weirdStrings :: [Char] -> Bool
weirdStrings b =
  all
    (== True)
    ( fmap
        ( \(x, y) ->
            [x, y] /= "ab" && [x, y] /= "cd" && [x, y] /= "pq" && [x, y] /= "xy"
        )
        $ b `zip` tail b
    )


-- |
-- >>> atLeastThreeVowels "ugknbfddgicrmopn"
-- True
-- 
-- >>> appearsTwice "ugknbfddgicrmopn"
-- True
-- 
-- >>> weirdStrings "ugknbfddgicrmopn"
-- True
-- 
-- >>> atLeastThreeVowels "aaa"
-- True
-- 
-- >>> appearsTwice "aaa"
-- True
-- 
-- >>> weirdStrings "aaa"
-- True
-- 
-- >>> nice "ugknbfddgicrmopn"
-- True
-- 
-- >>> nice "aaa"
-- True
-- 
-- >>> nice "jchzalrnumimnmhp"
-- False
-- 
-- >>> nice "haegwjzuvuyypxyu"
-- False
-- 
-- >>> nice "dvszwmarrgswjxmb"
-- False
nice :: [Char] -> Bool
nice str = atLeastThreeVowels str && appearsTwice str && weirdStrings str

-- |
-- >>> part1
-- 236
part1 :: IO Int
part1 = do
  inp <- lines <$> readFile "src/year2015/Day5/input.txt"
  return $ length $ filter (==True) $ fmap nice inp

-----------------
-- It contains a pair of any two letters that appears at least twice in the string without overlapping,
-- like xyxy (xy) or aabcdefgaa (aa), but not like aaa (aa, but it overlaps).

-- It contains at least one letter which repeats with exactly one letter between them, like xyx, abcdefeghi (efe), or even aaa.
-- For example:

-- qjhvhtzxzqqjkmpb is nice because is has a pair that appears twice (qj) and a letter that repeats with exactly one letter between them (zxz).
-- xxyxx is nice because it has a pair that appears twice and a letter that repeats with one between, even though the letters used by each rule overlap.
-- uurcxstgmygtbstg is naughty because it has a pair (tg) but no repeat with a single letter between them.
-- ieodomkazucvgmuy is naughty because it has a repeating letter with one between (odo), but no pair that appears twice.

-- |
-- >>> twoLettersTwice "xyxy"
-- True

-- >>> twoLettersTwice "aabcdefgaa"
-- True

-- >>> twoLettersTwice "aaa"
-- False

twoLettersTwice :: [Char] -> Bool
-- twoLettersTwice [] = False
-- twoLettersTwice [_,_,_] = False
twoLettersTwice [a,b,c,d] = [a,b] == [c,d]
twoLettersTwice c = len >= 2 || len2 >=1
    where
        len = length $ filter (uncurry (==)) $ c `zip` tail c
        len2 = length $ filter (\ts -> length ts >= 2) ((group . sort) $ c `zip` tail c)

-- |
-- >>> repeatsBetween "xyx"
-- True
-- >>> repeatsBetween "abcdefeghi"
-- True
-- >>> repeatsBetween "aaa"
-- True
repeatsBetween :: [Char] -> Bool
repeatsBetween [] = False
repeatsBetween [_] = False
repeatsBetween [_, _] = False
repeatsBetween [a,b,c,d,e] = a == c || repeatsBetween [b,c,d,e]
repeatsBetween list@(_:xs) = rule (take 3 list) || repeatsBetween xs
    where
        rule [a,_,c] = a == c

-- |
-- >>> twoLettersTwice "qjhvhtzxzqqjkmpb"
-- True

-- >>> repeatsBetween "qjhvhtzxzqqjkmpb"
-- True

-- >>> nice2 "qjhvhtzxzqqjkmpb"
-- True

-- >>> nice2 "xxyxx"
-- True

-- >>> nice2 "uurcxstgmygtbstg"
-- False

-- >>> nice2 "ieodomkazucvgmuy"
-- False

nice2 :: [Char] -> Bool
nice2 str = twoLettersTwice str && repeatsBetween str

-- | 88 is wrong
-- >>> part2
-- 88
part2 :: IO Int
part2 = do
  inp <- lines <$> readFile "src/year2015/Day5/input.txt"
  return $ length $ filter (==True) $ fmap nice2 inp