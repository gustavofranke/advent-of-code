module Year2020.Day7.Solution where

import qualified Data.Map.Strict as M
import Text.Parsec
    ( char,
      digit,
      letter,
      space,
      string,
      many1,
      optional,
      (<|>),
      parse,
      try )
import Text.Parsec.String (Parser)
import Data.Char (digitToInt)

parseLine :: Parser (String, [(String, Int)])
parseLine = do
  tone  <- many1 letter
  _     <- space
  color <- many1 letter
  let parent = unwords [tone, color]
  _     <- space
  _     <- string "bags"
  _     <- space
  _     <- string "contain"
  _     <- space
  children <- try $ many1 zeroBags <|> many1 bagsContained
  return (parent, children)

bagsContained :: Parser (String, Int)
bagsContained = do
  d     <- digit
  _     <- space
  tone  <- many1 letter
  _     <- space
  color <- many1 letter
  _     <- space
  optional $ try $ string "bags"
  optional $ try $ string "bag"
  _     <- try (char ',' <|> char '.')
  optional $ try space
  return (unwords [tone, color], digitToInt d)

zeroBags :: Parser (String, Int)
zeroBags = do
  s <- string "no other bags."
  return (s, 0)

startFrom :: String -> M.Map String [(String, Int)] -> String -> Bool
startFrom start hierarchy bag = (start `elem` map fst children) || any (startFrom start hierarchy . fst) children
  where
    children = M.findWithDefault [] bag hierarchy

contains :: M.Map String [(String, Int)] -> String -> Int
contains hierarchy bag = sum quantity + sum quantity1
  where
    children = M.findWithDefault [] bag hierarchy
    quantity = map snd children
    quantity1 = zipWith (*) quantity (map (contains hierarchy . fst) children)

-- |
-- >>> day7aAnswer
-- 164
day7aAnswer :: IO Int
day7aAnswer = do
    inp <- lines <$> readFile "src/year2020/Day7/input.txt"
    let Right bagsAndContents = traverse (parse parseLine "line") inp
    let hierar = M.fromList bagsAndContents
    return $ length $ filter (startFrom "shiny gold" hierar) (M.keys hierar)

-- |
-- >>> day7bAnswer
-- 7872
day7bAnswer :: IO Int
day7bAnswer = do
    inp <- lines <$> readFile "src/year2020/Day7/input.txt"
    let Right bagsAndContents = traverse (parse parseLine "line") inp
    let hierar = M.fromList bagsAndContents
    return $ contains hierar "shiny gold"

--------------------------
{-
light red bag   dark orange bag
         \___________/
               |
               V
        bright white bag   muted yellow bag
                 \___________/
                        |
                        V
                  shiny gold bag
-}

{-
                  shiny gold bag
                        |       
                   -----------------------  
                  /                       \  
        bright white bag               muted yellow bag
                |                               |                         
           -----------                     -----------    
          /           \                   /           \   
light red bag   dark orange bag light red bag   dark orange bag      
-}
-- start with "shiny gold"
-- getAllContains "shiny gold" list  ==> ["bright white", "muted yellow"]
-- getAllContains "bright white" list==> ["light red", "dark orange"]
-- getAllContains "muted yellow" list==> ["light red", "dark orange"]
-- getAllContains "light red" list   ==> []
-- getAllContains "dark orange" list ==> []

-- input :: [[Char]]
-- input = ["light red bags contain 1 bright white bag, 2 muted yellow bags.","dark orange bags contain 3 bright white bags, 4 muted yellow bags.","bright white bags contain 1 shiny gold bag.","muted yellow bags contain 2 shiny gold bags, 9 faded blue bags.","shiny gold bags contain 1 dark olive bag, 2 vibrant plum bags.","dark olive bags contain 3 faded blue bags, 4 dotted black bags.","vibrant plum bags contain 5 faded blue bags, 6 dotted black bags.","faded blue bags contain no other bags.","dotted black bags contain no other bags."]

-- inputList :: [[Char]] -> [(String, String)]
-- inputList = fmap prepareInput

-- prepareInput :: [Char] -> (String, String)
-- prepareInput line = (pair, colours)
--     where
--         pair = unwords $ init $ takeWhile (/= "contain") $ words line
--         colours = unwords $ tail $ dropWhile (/= "contain") $ words line

-- list :: [([Char], [Char])]
-- list = [
--     ("light red", "1 bright white bag, 2 muted yellow bags."),
--     ("dark orange", "3 bright white bags, 4 muted yellow bags."),
--     ("bright white", "1 shiny gold bag."),
--     ("muted yellow", "2 shiny gold bags, 9 faded blue bags."),
--     ("shiny gold", "1 dark olive bag, 2 vibrant plum bags."),
--     ("dark olive", "3 faded blue bags, 4 dotted black bags."),
--     ("vibrant plum", "5 faded blue bags, 6 dotted black bags."),
--     ("faded blue", "no other bags."),
--     ("dotted black", "no other bags.")
--     ]
  
-- -- getAllContains :: String -> [(String, String)] -> [String]
-- getAllContains :: [Char] -> [(a, String)] -> [a]
-- getAllContains adjectcolour c = map fst $
--   filter
--     ( \l ->
--         let w = words (snd l)
--             ac = words adjectcolour
--             adject = head ac
--             colour = ac !! 1
--          in elem adject w && elem colour w
--     ) c

-- program :: [Char] -> [([Char], String)] -> [[[Char]]]
-- program start ls = fmap (`getAllContains` ls) asdf ++ [asdf]
--   where
--     asdf = getAllContains start ls

-- count :: [[Char]] -> [[Char]]
-- count i = nub $ concat $ program "shiny gold" (inputList i)

-- answer :: [[Char]] -> Int
-- answer i = length $ count i


-- -- |
-- -- >>> extract
-- -- 4
-- extract :: IO Int
-- extract = do
--   inp <- readFile "src/year2020/Day7/example.txt"
--   pure $ answer $ lines inp


-- -- |
-- -- >>> extract2
-- -- 93
-- extract2 :: IO Int
-- extract2 = do
--   inp <- readFile "src/year2020/Day7/input.txt"
--   pure $ answer $ lines inp

-----------------
