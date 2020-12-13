module Day13.Solution where

import Data.List
import Data.Ord

-- example :: [[Char]]
-- example = [
--   "939", -- the earliest timestamp you could depart
--   "7,13,x,x,59,x,31,19" -- the bus IDs in service
--    ]

sanitisedExample :: [[Int]]
sanitisedExample = [
    [939],
    [7,13,59,31,19]
  ]

sanitisedInput :: [[Int]]
sanitisedInput = [
  [1004345],
  [41,37,379,23,13,17,29,557,19]
  ]

departures :: Int -> [Int]
departures busId = iterate (+ busId) 0

answer :: [[Int]] -> Int
answer notes = ((snd mini) - earlierDepartureTime) * (fst mini)-- minutes before it departs
  where
    earlierDepartureTime = head $ head notes
    busServices = notes !! 1
    -- inServiceDepartures = concatMap (take 1 . dropWhile (< earlierDepartureTime) . departures) busServices
    inServiceDepartures = fmap (\busId -> let depart = take 1 $ dropWhile (< earlierDepartureTime) $ departures busId in (busId, head depart) ) busServices
    -- mini = minimum $ fmap snd inServiceDepartures
    mini = minimumBy (comparing snd) inServiceDepartures


-- |
-- >>> answerExample
-- 295
answerExample :: Int
answerExample = answer sanitisedExample

-- |
-- >>> answerInput
-- 1895
answerInput :: Int
answerInput = answer sanitisedInput