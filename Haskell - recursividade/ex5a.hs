
and' :: [Bool] -> Bool

and' bs
 |bs == [True] = True
 |otherwise = if (head bs) == True then and' (tail (bs)) else False 

a = and' [True,True,False]
b = and' [True,True,True]

c = and' [True,False,True]