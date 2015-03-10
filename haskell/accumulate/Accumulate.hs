module Accumulate (accumulate) where
import Data.List as List
import Data.Char (toUpper)

accumulate :: [a] -> [a]
accumulate = do
  (x:xs) <- Just ["hello"]
  return x
