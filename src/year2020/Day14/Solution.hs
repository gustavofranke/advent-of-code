module Year2020.Day14.Solution where

import Text.Parsec
import Text.Parsec.String

type Bit = Int

-- >>> bin2Int [1,0,1,1]
-- 11
bin2Int :: [Bit] -> Int
bin2Int l = sum $ fmap (\(_, i) -> 2^i) $ filter (\(b, _) -> b == 1) $ reverse l `zip` [(0::Int) ..]

-- |
-- >>> int2bin 11
-- [1,0,1,1]
int2bin :: Int -> [Bit]
int2bin 0 = [0]
int2bin n = go n []
    where go 0 r = r
          go k rs = go (div k 2) (mod k 2:rs)

-- The current bitmask is applied to values immediately before
-- they are written to memory:
-- a 0 or 1 overwrites the corresponding bit in the value,
-- while an X leaves the bit in the value unchanged.

-- mask = XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X
-- mem[8] = 11
-- mem[7] = 101
-- mem[8] = 0
--------------------------------
-- |
-- >>> asdf "XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X" 11
-- [('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('X',0),('1',0),('X',0),('X',0),('X',1),('X',0),('0',1),('X',1)]
asdf :: [Char] -> Int -> [(Char, Bit)]
asdf mask value = mask `zip` (padZeroes ++ valueInBin)
    where
      valueInBin = int2bin value
      padZeroes = replicate (length mask - length valueInBin) 0

result :: (Char, Bit) -> Bit
result ('X', b) = b
result ('0', _) = 0
result ('1', _) = 1
result (e, _) = error ("what??? " ++ [e])

-- |
-- >>> qwer "XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X" 11
-- 73
-- >>> qwer "XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X" 101
-- 101
-- >>> qwer "XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X" 0
-- 64
qwer :: [Char] -> Int -> Int
qwer mask value = bin2Int $ result <$> asdf mask value

-- |
-- >>> zxcv "XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X" [101, 0]
-- 165
zxcv :: [Char] -> [Int] -> Int
zxcv mask values = sum $ fmap (qwer mask) values

example :: [[Char]]
example = [
   "mask = XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X"
  ,"mem[8] = 11"
  ,"mem[7] = 101"
  ,"mem[8] = 0"
  ]

