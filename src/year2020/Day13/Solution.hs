module Day13.Solution where

import Data.List ( minimumBy )
import Data.Ord ( comparing )

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
answer notes = ((snd mini) - earlierDepartureTime) * (fst mini) -- minutes before it departs
  where
    earlierDepartureTime = head $ head notes
    busServices = notes !! 1
    inServiceDepartures = fmap (\busId -> let depart = take 1 $ dropWhile (< earlierDepartureTime) $ departures busId in (busId, head depart) ) busServices
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