module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune
            deriving (Eq, Ord, Show, Read, Bounded, Enum)

secondsToYears :: Float -> Float
secondsToYears x = x / 31557600

ageOn :: Planet -> Float -> Float
ageOn planet seconds
  | planet == Mercury = (secondsToYears seconds) / 0.2408467
  | planet == Venus = (secondsToYears seconds) / 0.61519726
  | planet == Mars = (secondsToYears seconds) / 1.8808158
  | planet == Jupiter = (secondsToYears seconds) / 11.862615
  | planet == Saturn = (secondsToYears seconds) / 29.447498
  | planet == Uranus = (secondsToYears seconds) / 84.016846
  | planet == Neptune = (secondsToYears seconds) / 164.79132
  | otherwise = secondsToYears seconds
