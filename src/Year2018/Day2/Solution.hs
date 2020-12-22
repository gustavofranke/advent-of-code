module Year2018.Day2.Solution where

import Data.List ( group, intersect, nub, partition, sort )

-- |
-- >>> occurs "abcdef"
-- [("a",1),("b",1),("c",1),("d",1),("e",1),("f",1)]
-- >>> occurs "bababc"
-- [("a",2),("b",3),("c",1)]
-- >>> occurs "abbcde"
-- [("a",1),("b",2),("c",1),("d",1),("e",1)]
-- >>> occurs "abcccd"
-- [("a",1),("b",1),("c",3),("d",1)]
-- >>> occurs "aabcdd"
-- [("a",2),("b",1),("c",1),("d",2)]
-- >>> occurs "abcdee"
-- [("a",1),("b",1),("c",1),("d",1),("e",2)]
-- >>> occurs "ababab"
-- [("a",3),("b",3)]
occurs :: Ord a => [a] -> [([a], Int)]
occurs ls = (\str -> (nub str, length str)) <$> (group . sort) ls

-- |
-- >>> twiceOrThrice "abcdef"
-- []
-- >>> twiceOrThrice "bababc"
-- [("a",2),("b",3)]
-- >>> twiceOrThrice "abbcde"
-- [("b",2)]
-- >>> twiceOrThrice "abcccd"
-- [("c",3)]
-- >>> twiceOrThrice "aabcdd"
-- [("a",2),("d",2)]
-- >>> twiceOrThrice "abcdee"
-- [("e",2)]
-- >>> twiceOrThrice "ababab"
-- [("a",3),("b",3)]

twiceOrThrice :: Ord a => [a] -> [([a], Int)]
twiceOrThrice ls = filter (\(_, i) -> i == 2 || i == 3) $ occurs ls

processLine :: (Functor f, Ord a1, Num a2, Num b) => f [a1] -> f (a2, b)
processLine =
  fmap
    ( \line ->
        let pairs = twiceOrThrice line
            twos = if 2 `elem` fmap snd pairs then 1 else 0
            threes = if 3 `elem` fmap snd pairs then 1 else 0
         in (twos, threes)
    )

part1 :: (Foldable t, Num b, Functor t) => t (b, b) -> b
part1 ls = twos * threes
  where
    twos   = sum $ fmap fst ls
    threes = sum $ fmap snd ls

-- | 390 is too low, 16025 is too high
-- >>> answerInput1
-- 6150
answerInput1 :: IO Integer
answerInput1 = do
  inp <- lines <$> readFile "src/year2018/Day2/input.txt"
  return (part1 $ processLine inp)

---------------------------

part2 :: [[Char]] -> ([Char], [Char], [Char])
part2 [] =  ("", "", "")
part2 [_] = ("", "", "")
part2 (str1 : str2 : strs) = if compa == 1 then (str1, str2, inters) else part2 (str1 : strs)
  where
    inters = str1 `intersect` str2
    compa = length $ fst $ partition (== False) $ fmap (uncurry (==)) $ str1 `zip` str2

loop :: [[Char]] -> ([Char], [Char], [Char])
loop [] = ("", "", "")
loop (l:ls) = if part2 (l:ls) == ("", "", "") then loop ls else part2 (l:ls)

-- |
-- >>> answerInput2
-- ("rtehotyxzbodglnpkudawhijsc","rtefotyxzbodglnpkudawhijsc","rtehotyxzbodglnpkudawhijsc")
answerInput2 = do
  inp <- lines <$> readFile "src/year2018/Day2/input.txt"
  return (loop inp)

{-
"rtehotyxzbodglnpkudawhijsc",
"rtefotyxzbodglnpkudawhijsc",
"rtehotyxzbodglnpkudawhijsc")
"rteotyxzbodglnpkudawhijsc" <- answer, kinda got there manually!
-}