newtype NonNegative a = NonNegative a
toNonNegative :: (Num a, Ord a) => a -> NonNegative a
toNonNegative x
  | x < 0 = error "Only non-negative values are allowed."
  | otherwise = NonNegative x

euclides ::Int -> Int -> Int

euclides a b 
 |a == b = a
 |a < b = euclides (b-a) a
 |b < a = euclides (a-b) b


b = euclides 27 6