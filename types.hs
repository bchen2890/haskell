
import Data.Dynamic

addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z  

-- for big numbers
factorial :: Integer -> Integer  
factorial n = product [1..n]
--floating point
circumference :: Float -> Float  
circumference r = 2 * pi * r
--floating point with more precision
circumference' :: Double -> Double  
circumference' r = 2 * pi * r  

toUpperCase :: Char -> Char
toUpperCase c = if c >= 'a' && c <= 'z' then toEnum (fromEnum c - 32) else c
main = do
    putStrLn "type of 'a'"
    print (dynTypeRep (toDyn 'a'))
    putStrLn "type of True"
    print (dynTypeRep (toDyn True))
    putStrLn "type of 'hello'"
    print (dynTypeRep (toDyn "Hello"))
    putStrLn "function declaration"
    putStrLn "--Int"
    print (dynTypeRep (toDyn addThree))
    print $ addThree 1 2 3
    putStrLn "--Integer"
    print (dynTypeRep (toDyn factorial))
    print $ factorial 15
    putStrLn "--Float"
    print (dynTypeRep (toDyn circumference))
    print $ circumference 10
    putStrLn "--Double"
    print (dynTypeRep (toDyn circumference'))
    print $ circumference' 10
    putStrLn "--Char"
    print (dynTypeRep (toDyn toUpperCase))
    print $ toUpperCase 'c'


