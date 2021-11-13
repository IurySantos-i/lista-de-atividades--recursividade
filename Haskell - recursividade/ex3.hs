import Data.Eq (Eq)
import Prelude (Num ((*), (-)), otherwise, Ord ((<=)))
import Data.Eq
import GHC.Num (Num)
(##)  :: (Num a, Ord a) => a -> a -> a

n ## powerof
 |powerof <= 0 = 1
 |otherwise = n * (n ## (powerof-1))

a=  5 ## 3