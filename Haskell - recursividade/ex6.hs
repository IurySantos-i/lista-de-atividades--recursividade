
merger :: Ord a => [a] -> [a] -> [a]
merger as [] =   as
merger [] bs =   bs
merger (a:as) (b:bs)
 | a <= b = a  : merger as (b:bs)
 | b < a =  b  : merger bs (a:as)