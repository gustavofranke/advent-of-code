{-# LANGUAGE OverloadedStrings #-}
module Year2020.Day4.Solution where

import Data.List ( stripPrefix )
import Data.Maybe ( catMaybes )
import Year2020.Inputs ( day4 )

-- |
-- The expected fields are as follows:
-- byr (Birth Year)
-- iyr (Issue Year)
-- eyr (Expiration Year)
-- hgt (Height)
-- hcl (Hair Color)
-- ecl (Eye Color)
-- pid (Passport ID)
-- cid (Country ID)
data Passport = Passport
    { byr :: String
    , iyr :: String
    , eyr :: String
    , hgt :: String
    , hcl :: String
    , ecl :: String
    , pid :: String
    , cid :: Maybe String
    } deriving Show
    
-- |
-- >>> mkPassport [("ecl", "gry"), ("pid", "860033327"), ("eyr", "2020"), ("hcl", "#fffffd"), ("byr", "1937"), ("iyr", "2017"), ("cid", "147"), ("hgt", "183cm")]
-- Just (Passport {byr = "1937", iyr = "2017", eyr = "2020", hgt = "183cm", hcl = "#fffffd", ecl = "gry", pid = "860033327", cid = Just "147"})

-- >>> mkPassport [("iyr", "2013"), ("ecl", "amb"), ("cid", "350"), ("eyr", "2023"), ("pid", "028048884"), ("hcl", "#cfa07d"), ("byr", "1929")]
-- Nothing

-- >>> mkPassport [("hcl", "#ae17e1"), ("iyr", "2013"), ("eyr", "2024"), ("ecl", "brn"), ("pid", "760753108"), ("byr", "1931"), ("hgt", "179cm")]
-- Just (Passport {byr = "1931", iyr = "2013", eyr = "2024", hgt = "179cm", hcl = "#ae17e1", ecl = "brn", pid = "760753108", cid = Nothing})

-- >>> mkPassport [("hcl", "#cfa07d"), ("eyr", "2025"), ("pid", "166559648"), ("iyr", "2011"), ("ecl", "brn"), ("hgt", "59in")]
-- Nothing
mkPassport :: [(String, String)] -> Maybe Passport
mkPassport m = do
    byr0 <- lookup "byr" m
    iyr0 <- lookup "iyr" m
    eyr0 <- lookup "eyr" m
    hgt0 <- lookup "hgt" m
    hcl0 <- lookup "hcl" m
    ecl0 <- lookup "ecl" m
    pid0 <- lookup "pid" m
    Just (Passport byr0 iyr0 eyr0 hgt0 hcl0 ecl0 pid0 (lookup "cid" m))

-- Here is an example batch file containing four passports:
-- 
-- ecl:gry pid:860033327 eyr:2020 hcl:#fffffd
-- byr:1937 iyr:2017 cid:147 hgt:183cm
-- 
-- iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884
-- hcl:#cfa07d byr:1929
-- 
-- hcl:#ae17e1 iyr:2013
-- eyr:2024
-- ecl:brn pid:760753108 byr:1931
-- hgt:179cm
-- 
-- hcl:#cfa07d eyr:2025 pid:166559648
-- iyr:2011 ecl:brn hgt:59in

exampleBatchFile :: [Char]
exampleBatchFile =
  "ecl:gry pid:860033327 eyr:2020 hcl:#fffffd "
    ++ "byr:1937 iyr:2017 cid:147 hgt:183cm "
    ++ "\n"
    ++ "iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884 "
    ++ "hcl:#cfa07d byr:1929 "
    ++ "\n"
    ++ "hcl:#ae17e1 iyr:2013 "
    ++ "eyr:2024 "
    ++ "ecl:brn pid:760753108 byr:1931 "
    ++ "hgt:179cm "
    ++ "\n"
    ++ "hcl:#cfa07d eyr:2025 pid:166559648 "
    ++ "iyr:2011 ecl:brn hgt:59in "

-- |
-- >>> mkKeyValue exampleBatchFile
-- [[("ecl","gry"),("pid","860033327"),("eyr","2020"),("hcl","#fffffd"),("byr","1937"),("iyr","2017"),("cid","147"),("hgt","183cm")],[("iyr","2013"),("ecl","amb"),("cid","350"),("eyr","2023"),("pid","028048884"),("hcl","#cfa07d"),("byr","1929")],[("hcl","#ae17e1"),("iyr","2013"),("eyr","2024"),("ecl","brn"),("pid","760753108"),("byr","1931"),("hgt","179cm")],[("hcl","#cfa07d"),("eyr","2025"),("pid","166559648"),("iyr","2011"),("ecl","brn"),("hgt","59in")]]
mkKeyValue :: [Char] -> [[([Char], [Char])]]
mkKeyValue input = fmap passpByKV separatePassp
    where
        separatePassp = lines input
        fielsPerPassp = words
        readKey       = takeWhile (/= ':')
        readValue     = tail . dropWhile (/= ':')
        passpByKV str = map (\kv -> (readKey kv, readValue kv)) (fielsPerPassp str)


-- |
-- >>> readAllPassp exampleBatchFile
-- [Just (Passport {byr = "1937", iyr = "2017", eyr = "2020", hgt = "183cm", hcl = "#fffffd", ecl = "gry", pid = "860033327", cid = Just "147"}),Nothing,Just (Passport {byr = "1931", iyr = "2013", eyr = "2024", hgt = "179cm", hcl = "#ae17e1", ecl = "brn", pid = "760753108", cid = Nothing}),Nothing]
readAllPassp :: [Char] -> [Maybe Passport]
readAllPassp str= map mkPassport (mkKeyValue str)

-- |
-- >>> day4aExample
-- 2
day4aExample :: Int
day4aExample = length $ catMaybes $ readAllPassp exampleBatchFile

-- |
-- >>> day4aAnswer
-- 206
day4aAnswer :: Int
day4aAnswer = length $ catMaybes $ readAllPassp Year2020.Inputs.day4

------------------------------------------------
readAllPasspP2 :: [Char] -> [Maybe Passport]
readAllPasspP2 str= map mkPassportP2 (mkKeyValue str)

-- |
-- >>> day4bAnswer
-- 123
day4bAnswer :: Int
day4bAnswer = length $ catMaybes $ readAllPasspP2 Year2020.Inputs.day4

mkPassportP2 :: [(String, String)] -> Maybe Passport
mkPassportP2 m = do
    byr0 <- lookup "byr" m
    byr1 <- isValidbByr byr0
    iyr0 <- lookup "iyr" m
    iyr1 <- isValidIyr iyr0
    eyr0 <- lookup "eyr" m
    eyr1 <- isValidEyr eyr0
    hgt0 <- lookup "hgt" m
    hgt1 <- isValidHgt hgt0
    hcl0 <- lookup "hcl" m
    hcl1 <- isValidHcl hcl0
    ecl0 <- lookup "ecl" m
    ecl1 <- isValidEcl ecl0
    pid0 <- lookup "pid" m
    pid1 <- isValidPid pid0
    Just (Passport byr1 iyr1 eyr1 hgt1 hcl1 ecl1 pid1 (lookup "cid" m))


-- | byr (Birth Year) - four digits; at least 1920 and at most 2002.
-- >>> isValidbByr "2002"
-- Just "2002"
-- >>> isValidbByr "2003"
-- Nothing
isValidbByr :: [Char] -> Maybe [Char]
isValidbByr byr1 = if (length byr1 == 4) && (number >= 1920) && (number <= 2002) then Just byr1 else Nothing
  where
    number = read byr1 :: Int

-- | iyr (Issue Year) - four digits; at least 2010 and at most 2020.
isValidIyr :: [Char] -> Maybe [Char]
isValidIyr iyr1 = if (length iyr1 == 4) && (number >= 2010) && (number <= 2020) then Just iyr1 else Nothing
  where
    number = read iyr1 :: Int

-- eyr (Expiration Year) - four digits; at least 2020 and at most 2030.
isValidEyr :: [Char] -> Maybe [Char]
isValidEyr eyr1 = if (length eyr1 == 4) && (number >= 2020) && (number <= 2030) then Just eyr1 else Nothing
  where
    number = read eyr1 :: Int

-- |
-- hgt (Height) - a number followed by either cm or in:
--   If cm, the number must be at least 150 and at most 193.
--   If in, the number must be at least 59 and at most 76.
-- >>> isValidHgt "60in"
-- Just "60in"
-- 
-- >>> isValidHgt "190cm"
-- Just "190cm"
-- 
-- >>> isValidHgt "190in"
-- Nothing
-- 
-- >>> isValidHgt "190"
-- Nothing
isValidHgt :: [Char] -> Maybe [Char]
isValidHgt hgt1 = case uom of
    "cm" -> if number >= 150 && number <= 193 then Just hgt1 else Nothing
    "in" -> if number >= 59 && number <= 76 then Just hgt1 else Nothing
    _    -> Nothing
  where
    number = read (take (length hgt1 - 2) hgt1) :: Int
    uom    = drop (length hgt1 - 2) hgt1

-- |
-- hcl (Hair Color) - a # followed by exactly six characters 0-9 or a-f. 
--  
-- >>> isValidHcl "#123abc"
-- Just "#123abc"
-- >>> isValidHcl "#123abz"
-- Nothing
-- >>> isValidHcl "123abc"
-- Nothing
isValidHcl :: [Char] -> Maybe [Char]
isValidHcl hcl1 = stripPrefix "#" hcl1 >>= (\s -> if length s == 6 && isAtoF s then Just hcl1 else Nothing)
  where
    isAtoF s = and $ fmap (\c -> c `elem` ['a' .. 'f'] || c `elem` ['0' .. '9']) s

-- |
-- ecl (Eye Color) - exactly one of: amb blu brn gry grn hzl oth.
-- 
-- >>> isValidEcl "brn"
-- Just "brn"
-- 
-- >>> isValidEcl "wat"
-- Nothing
isValidEcl :: [Char] -> Maybe [Char]
isValidEcl ecl1
    | ecl1 == "amb" = Just ecl1
    | ecl1 == "blu" = Just ecl1
    | ecl1 == "brn" = Just ecl1
    | ecl1 == "gry" = Just ecl1
    | ecl1 == "grn" = Just ecl1
    | ecl1 == "hzl" = Just ecl1
    | ecl1 == "oth" = Just ecl1
    | otherwise = Nothing

-- |   
-- >>> isValidPid "000000001"
-- Just "000000001"
-- 
-- >>> isValidPid "0123456789"
-- Nothing
isValidPid :: [Char] -> Maybe [Char]
isValidPid pid1 =  if length pid1 == 9 then Just pid1 else Nothing
