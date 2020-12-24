module Year2016.Day6.Solution where

import Data.List

-- ex =
--   [ "eedadn",
--     "drvtee",
--     "eandsr",
--     "raavrd",
--     "atevrs",
--     "tsrnev",
--     "sdttsa",
--     "rasrtv",
--     "nssdts",
--     "ntnada",
--     "svetve",
--     "tesnvt",
--     "vntsnd",
--     "vrdear",
--     "dvrsen",
--     "enarar"
--   ]

-- >>> asdf
-- ["ederatsrnnstvvde","eraatsdastvenrvn","dvnaertssnestdra","atdvvntrdatnsesr","desrresttdvvnaea","nerdsvavsaetdrnr"]
asdf ls = fmap zxcv (transpose ls) --fmap (group . sort) 

qwer col = fmap (\ls -> (nub ls, length ls)) ((group . sort) col)

zxcv col = maximumBy (\(a,b) (c,d) -> compare b d) (qwer col)


-- |
-- >>> answerInput2
-- "ursvoerv"
answerInput2 = do
  inp <- lines <$> readFile "src/year2016/Day6/input.txt"
  return $ concatMap fst $ asdf inp

----------------------------