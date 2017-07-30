module Pangram (isPangram) where
import qualified Data.Char as C

isPangram :: String -> Bool
isPangram s = foldr1 (&&) t
  where a = ['a'..'z']
        s2 = map C.toLower s
        t = map (\x -> elem x s2) a
