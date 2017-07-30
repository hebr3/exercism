module RunLength (decode, encode) where
import Data.List as L

decode :: String -> String
decode encode = error "You need to write this part."

encode :: String -> String
encode [] = ""
encode text = foldr1 (++) text3
  where text2 = L.group text
        text3 = map stringLength text2

stringLength :: String -> String
stringLength s
  | tail s == [] = s
  | otherwise = show (length s) ++ [head s]
