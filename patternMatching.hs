
sayMe :: (Integral a) => a -> String  
sayMe 1 = "One!"  
sayMe 2 = "Two!"  
sayMe 3 = "Three!"  
sayMe 4 = "Four!"  
sayMe 5 = "Five!"  
sayMe x = "Not between 1 and 5" 

factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1)  

first :: (a, b, c) -> a  
first (x, _, _) = x 

length' :: (Num b) => [a] -> b  
length' [] = 0  
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a  
sum' [] = 0  
sum' (x:xs) = x + sum' xs

fstSnd :: String -> String  
fstSnd "" = "Empty string!"  
fstSnd all@(x:y:_) = "The first and second letter of " ++ all ++ " are " ++ [x] ++ " and " ++ [y]
fstSnd all@(x:_) = "There is only one character " ++ all

main = do
    putStrLn "pattern matching number between 1 and 5"
    print $ sayMe 2
    putStrLn "factorial"
    print $ factorial 5
    putStrLn "first element of a triple"
    print $ first (2, 5, 1)
    putStrLn "length"
    print $ length' [2, 5, 1]
    putStrLn "sum"
    print $ sum' [2, 5, 1]
    putStrLn "sum"
    print $ sum' [2, 5, 1]
    putStrLn "get the whole element"
    print $ fstSnd "hello"
    print $ fstSnd "h"
    print $ fstSnd "he"