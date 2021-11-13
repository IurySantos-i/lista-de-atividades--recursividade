concat' :: [[a]] -> [a]

concat' as 
  | null as  = []
  | otherwise = (head as) ++ (concat' (tail as)) 


a = concat' [[1,1,1],[2,2,2],[3,3,3],[4,4,4]]
b = concat' [[1,2],[3,4],[5,6],[7,8]]