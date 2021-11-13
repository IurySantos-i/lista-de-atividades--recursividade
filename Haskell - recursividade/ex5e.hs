elem' :: Eq a => a -> [a] -> Bool

elem' e (x:xs) 
 | x == e = True  
 | length (x:xs) == 1 && x /= e = False 
 | otherwise = elem' e xs 


a = elem' 'z' ['a','b','c','d','e','f','g'] 
b =  elem' 'f' ['a','b','c','d','e','f','g'] 
