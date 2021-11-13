somadeLista :: [Int] -> Int
somadeLista ns = head ns +  somadeLista (tail ns) 