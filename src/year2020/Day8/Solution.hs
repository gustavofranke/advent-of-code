module Year2020.Day8.Solution where

import Text.Parsec
import Text.Parsec.String
import qualified Data.Set as Set
import qualified Data.Sequence as Seq
import Data.Maybe

-- These instructions are visited in this order:
-- nop +0  | 1
-- acc +1  | 2, 8(!)
-- jmp +4  | 3
-- acc +3  | 6
-- jmp -3  | 7
-- acc -99 |
-- acc +1  | 4
-- jmp -4  | 5
-- acc +6  |

data Op = Nop Int | Acc Int | Jmp Int deriving Show

-- |
-- >>> day8aExample
-- 5
day8aExample :: IO Int
day8aExample = do
    inp <- lines <$> readFile "src/year2020/Day8/example.txt"
    let Right opers = traverse (parse parseOp "line") inp
    return $ day8a $ Seq.fromList opers

-- |
-- >>> day8aAnswer
-- 1939
day8aAnswer :: IO Int
day8aAnswer = do
    inp <- lines <$> readFile "src/year2020/Day8/input.txt"
    let Right opers = traverse (parse parseOp "line") inp
    return $ day8a $ Seq.fromList opers

-- |
-- >>> parse parseOp "line" "acc +1"
-- Right (Acc 1)
-- >>> parse parseOp "line" "jmp -4"
-- Right (Jmp (-4))
parseOp :: Parser Op
parseOp = parseInstru <* char ' ' <*> parseOffset
  where
    parseInstru = choice [Nop <$ string "nop", Jmp <$ string "jmp", Acc <$ string "acc"]  
    parseOffset = (id <$ char '+' <|> negate <$ char '-') <*> (read <$> many1 digit)

-- |
-- >>> day8a $ Seq.fromList [Nop 0,Acc 1,Jmp 4,Acc 3,Jmp (-3),Acc (-99),Acc 1,Jmp (-4),Acc 6]
-- 5
day8a :: Seq.Seq Op -> Int
day8a opers = snd $ states !! (i - 1)
  where
    states = loop (0, 0) opers
    Just i = go (fmap fst states) 0 Set.empty

-- |
-- >>> go [0,1,2,6,7,3,4,1,2,6,7,3,4,1,2,6,7,3,4,1] 0 Set.empty
-- Just 7
go :: (Ord a, Num t) => [a] -> t -> Set.Set a -> Maybe t
go (x : xs0) i0 s = if Set.member x s then Just i0 else go xs0 (i0 + 1) (Set.insert x s)
go [] _ _ = Nothing

-- |
-- >>> take 20 $ loop (0, 0) (Seq.fromList [Nop 0,Acc 1,Jmp 4,Acc 3,Jmp (-3),Acc (-99),Acc 1,Jmp (-4),Acc 6])
-- [(0,0),(1,0),(2,1),(6,1),(7,2),(3,2),(4,5),(1,5),(2,6),(6,6),(7,7),(3,7),(4,10),(1,10),(2,11),(6,11),(7,12),(3,12),(4,15),(1,15)]
loop :: (Int, Int) -> Seq.Seq Op -> [(Int, Int)]
loop c@(ip, _) opers = case opers Seq.!? ip of
  Nothing -> [c]
  Just op -> c : loop (nextPos c op) opers

-- |
-- >>> nextPos (0, 0) (Jmp (-3))
-- (-3,0)
-- >>> nextPos (0, 0) (Nop 0)
-- (1,0)
nextPos :: (Int, Int) -> Op -> (Int, Int)
nextPos (p, x) op = case op of
  (Acc n) -> (p + 1, x + n)
  (Jmp n) -> (p + n, x)
  (Nop _) -> (p + 1, x)
-----------------
-- |
-- >>> day8bAnswer
-- 2212
day8bAnswer :: IO Int
day8bAnswer = do
  inp <- lines <$> readFile "src/year2020/Day8/input.txt"
  let Right opers = traverse (parse parseOp "line") inp
  return $ day8b $ Seq.fromList opers

-- |
-- >>> day8b $ Seq.fromList [Nop 0,Acc 1,Jmp 4,Acc 3,Jmp (-3),Acc (-99),Acc 1,Jmp (-4),Acc 6]
-- 8
day8b :: Seq.Seq Op -> Int
-- day8b opers = head [a | Just a <- map (\i -> stop (Seq.adjust flipOp i opers)) [0..]]
-- day8b opers = head (catMaybes (map (\ i -> stop (Seq.adjust flipOp i opers)) [0 .. ]))
day8b opers = head (mapMaybe (\i -> stop (Seq.adjust flipOp i opers)) [0 ..])

stop :: Seq.Seq Op -> Maybe Int
stop opers = case go (map fst states) (0 :: Int) Set.empty of
  Nothing -> Just . snd $ last states
  Just _ -> Nothing
  where
    states = loop (0, 0) opers

flipOp :: Op -> Op
flipOp (Nop n) = Jmp n
flipOp (Jmp n) = Nop n
flipOp x = x
