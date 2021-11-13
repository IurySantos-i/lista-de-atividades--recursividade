
getTheFirst :: (Eq t, Num t) => t -> [a] -> [a]
getTheFirst 0 as = []
getTheFirst n as = head as : getTheFirst (n-1) (tail as)


a = getTheFirst 4 [7, 8 , 9, 1 ,8 , 8]
