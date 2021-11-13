
merger :: Ord a => [a] -> [a] -> [a]
merger as [] =   as
merger [] bs =   bs
merger (a:as) (b:bs)
 | a <= b = a  : merger as (b:bs)
 | b < a =  b  : merger bs (a:as)


metades :: [a] -> ([a],[a])
metades as
 | even (length as) = (take ((length as)`div`2) as , drop ((length as)`div`2) as)
 | odd (length as) =  (take ((length as -1 )`div`2) as , drop (((length as)`div`2) +1) as)


deconstruct (x:xs)
 |length (x:xs) == 1 =  [x]
 |length (x:xs) == 0 = []
 |otherwise = deconstruct (fst (metades (x:xs))) ++ deconstruct (snd (metades (x:xs)) )
 

mergesort :: Ord a => [a] -> [a]
mergesort (x:xs)
 |length (x:xs) == 1 =  [x]
 |length (x:xs) == 0 = []
 |otherwise =   uncurry merger (uncurry metades (metades (x:xs)))

{-
mergesort :: Ord a => [a] -> [a]
mergesort (x:xs)
 | length (x:xs) == 0 = []
 | length (x:xs) == 1 = [x]
 | otherwise = mergesort (fst (metades as))  ++ mergesort (snd (metades as))   
-}


{-
mergesort' :: Ord a => [a] -> [a]
mergesort' as = merger (fst metades (merger (fst (metades as)) (snd (metades as))))  (snd metades (as snd metades merger fst metades as snd metades as))  


-}