module Accumulate (accumulate) where

square :: Int -> Int
square x = x * x

accumulate :: (Eq a) => [a] -> [a] -> Either String Int
accumulate
