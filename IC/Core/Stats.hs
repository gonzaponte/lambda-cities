module IC.Core.Stats
( average
, variance
, weightedAverage
, weightedVar
, weightedStd
, normalizeTo
, discretePDF
, discreteCDF
, sampleCDF
) where

import Data.List(genericLength)
import Control.Monad(liftM)
import System.Random( Random
                    , RandomGen
                    , newStdGen
                    , randomRs
                    )

import IC.Core.Interpolate(linear1)

average :: (Fractional a) => [a] -> a
average xs = sum xs / genericLength xs


variance :: (Floating a) => [a] -> a
variance xs = let ave   = average xs
                  diffs = map ((**2) . (ave-)) xs
              in sum diffs / (genericLength xs - 1)

weightedAverage :: (Fractional a) => [a] -> [a] -> a
weightedAverage xs ws = let wsum      = sum ws
                            xweighted = zipWith (*) xs ws
                        in sum xweighted / wsum


weightedVar :: (Floating a) => [a] -> [a] -> a
weightedVar xs ws = let wsum   = sum ws
                        xmean  = weightedAverage xs ws
                        dx2    = map ((**2) . (xmean -)) xs
                        dxmean = weightedAverage dx2 ws
                    in dxmean

weightedStd :: (Floating a) => [a] -> [a] -> a
weightedStd xs ws = sqrt $ weightedVar xs ws


normalizeTo :: (Fractional a) => a -> [a] -> [a]
normalizeTo target xs = let norm = target / sum xs
                        in map (norm *) xs


discretePDF :: (Fractional a) => [a] -> [a]
discretePDF = normalizeTo 1


discreteCDF :: (Fractional a) => [a] -> [a]
discreteCDF = normalizeTo 1 . scanl (+) 0


sampleCDF :: (RandomGen g, Ord a, Fractional a, Random a) => g -> [a] -> [a] -> [a]
sampleCDF g xs ys = let inverseCDF = linear1 ys xs
                        randoms01  = randomRs (0, 1) g
                    in map inverseCDF randoms01
