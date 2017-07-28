module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year
  | 0 == mod year 400 = True
  | 0 == mod year 100 = False
  | 0 == mod year 4   = True
  | otherwise = False
