module Bob (responseFor) where
import qualified Data.Char as C
responseFor :: String -> String
responseFor xs
  | silencep xs = "Fine. Be that way!"
  | yellp xs = "Whoa, chill out!"
  | questionp xs = "Sure."
  | otherwise = "Whatever."

silencep :: String -> Bool
silencep [] = True
silencep s = foldr1 (&&) (map C.isSpace s)

yellp :: String -> Bool
yellp s = test1 && test2
  where test1 = s == map C.toUpper s
        test2 = foldr1 (||) (map C.isAlpha s)

questionp :: String -> Bool
questionp s = '?' == last s2
  where s2 = filter (not . C.isSpace) s
