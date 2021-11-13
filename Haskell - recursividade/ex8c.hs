
getLast :: [a] -> a
getLast xs
 |length xs == 1 = head xs   
 |otherwise = getLast (tail xs) 