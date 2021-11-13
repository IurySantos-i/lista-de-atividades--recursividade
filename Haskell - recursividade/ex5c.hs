replicate' :: Int -> a -> [a]
replicate' n x 
 |n==0 = []
 |n==1 = [x]
 |otherwise =  x : replicate' (n-1) x 


a = replicate' 40  1
b = replicate'  8 "ola"
c = replicate' 10  True


