minimum' :: (Ord a) => [a] -> a  
minimum' [] = error "minimum of empty list"  
minimum' [x] = x  
minimum' (x:xs) = min x (minimum' xs) 

main = do
    putStrLn "recursion"
    print $ minimum' [13, 45, 20]
    print $ minimum' [(-1), (-3), (0)]

