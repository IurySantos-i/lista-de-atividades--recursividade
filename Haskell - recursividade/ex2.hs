
somar :: Int -> Int 

somar x 
 | x==0 = 0
 | otherwise = x+ somar (x-1)
 