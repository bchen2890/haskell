minimum' :: (Ord a) => [a] -> a  
minimum' [] = error "minimum of empty list"  
minimum' [x] = x  
minimum' (x:xs) = min x (minimum' xs) 

quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted  

main = do
    putStrLn "recursion"
    print $ minimum' [13, 45, 20]
    print $ minimum' [(-1), (-3), (0)]
    putStrLn "quicksort"
    print $ quicksort [6,7,4,1,11,1,2,5,3,3,2,4,8,10,2,5,3,1] 

