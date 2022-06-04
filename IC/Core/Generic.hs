module IC.Core.Generic
( inRange
, normDifference
, edgesToCenters
, centersToEdges
, enumerate
, findNearest
, findIndexNearest
, rebin
, rebinSum
, rebinAverage
) where


import Data.List    (minimumBy)
import Data.Function(on)

import IC.Core.Stats(average)

inRange :: (Ord a, Num a) =>  a -> a -> [a] -> [Bool]
inRange xmin xmax xs = let gt = map (>=xmin) xs
                           lt = map (< xmax) xs
                       in zipWith (&&) gt lt


data NormMode = NormToFirst | NormToSecond | NormToSum | NormToMean

normDifference :: (Fractional a) => a -> a -> NormMode -> a
normDifference x y NormToFirst  = (x - y) /  x
normDifference x y NormToSecond = (x - y) /      y
normDifference x y NormToSum    = (x - y) / (x + y)
normDifference x y NormToMean   = (x - y) / (x + y) * 2


edgesToCenters :: (Fractional a) => [a] -> [a]
edgesToCenters [] = []
edgesToCenters xs = map (/2) $ zipWith (+) xs (tail xs)


centersToEdges :: (Fractional a) => [a] -> [a]
centersToEdges [] = []
centersToEdges xs = let first    = head xs
                        second   = head $ tail xs
                        headDiff = (first - second) / 2
                        sndLast  = last $ init xs
                        last'    = last xs
                        lastDiff = (last' - sndLast) / 2
                        mid      = edgesToCenters xs
                    in first + headDiff : mid ++ [last' + lastDiff]


enumerate :: [a] -> [(Int, a)]
enumerate = zip [0..]


findNearest :: (Ord a, Num a) => a -> [a] -> a
findNearest target xs = let ds = map (abs . (target -)) xs
                        in snd $ minimumBy (compare `on` fst) $ zip ds xs


findIndexNearest :: (Ord a, Num a) => a -> [a] -> Int
findIndexNearest target xs = let ds = map (abs . (target -)) xs
                             in fst $ minimumBy (compare `on` snd) $ enumerate ds


rebin :: ([a] -> a) -> Int -> [a] -> [a]
rebin f n xs = let (l, r) = splitAt n xs
               in f l : rebin f n r


rebinSum :: Num a => Int -> [a] -> [a]
rebinSum = rebin sum


rebinAverage :: Fractional a => Int -> [a] -> [a]
rebinAverage = rebin average
