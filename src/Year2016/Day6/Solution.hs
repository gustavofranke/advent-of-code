module Year2016.Day6.Solution where

import Data.List

ex =
  [ "eedadn",
    "drvtee",
    "eandsr",
    "raavrd",
    "atevrs",
    "tsrnev",
    "sdttsa",
    "rasrtv",
    "nssdts",
    "ntnada",
    "svetve",
    "tesnvt",
    "vntsnd",
    "vrdear",
    "dvrsen",
    "enarar"
  ]

-- |
-- >>> asdf ex
-- [("e",3),("a",3),("s",3),("t",3),("e",3),("r",3)]
asdf :: Ord a => [[a]] -> [([a], Int)]
asdf ls = fmap zxcv (transpose ls)

-- |
-- >>> qwer "eedadn"
-- [("a",1),("d",2),("e",2),("n",1)]
qwer :: Ord a => [a] -> [([a], Int)]
qwer col = fmap (\ls -> (nub ls, length ls)) ((group . sort) col)

-- |
-- >>> zxcv "eedadn"
-- ("e",2)
zxcv :: Ord a => [a] -> ([a], Int)
zxcv col = maximumBy (\(_,b) (_,d) -> compare b d) (qwer col)

-- |
-- >>> zxcv2 "eedadn"
-- ("a",1)
zxcv2 :: Ord a => [a] -> ([a], Int)
zxcv2 col = minimumBy (\(_,b) (_,d) -> compare b d) (qwer col)

-- |
-- >>> answerInput1
-- "ursvoerv"
answerInput1 :: IO [Char]
answerInput1 = do
  inp <- lines <$> readFile "src/year2016/Day6/input.txt"
  return $ concatMap fst $ asdf inp

----------------------------

-- |
-- >>> answerInput2
-- "vomaypnn"
answerInput2 :: IO [Char]
answerInput2 = do
  inp <- lines <$> readFile "src/year2016/Day6/input.txt"
  return $ concatMap fst $ fmap zxcv2 (transpose inp)
