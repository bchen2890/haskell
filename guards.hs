bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | weight / height ^ 2 <= 18.5 = "You're underweight!"  
    | weight / height ^ 2 <= 25.0 = "You're normal!"  
    | weight / height ^ 2 <= 30.0 = "You're fat!"  
    | otherwise = "You're a whale!"

bmiTell' :: (RealFloat a) => a -> a -> String  
bmiTell' weight height  
    | bmi <= skinny = "You're underweight!" 
    | bmi <= normal = "You're normal!"  
    | bmi <= fat = "You're fat!"  
    | otherwise   = "You're a whale!"
    where bmi = weight / height ^ 2  
          skinny = 18.5  
          normal = 25.0  
          fat = 30.0 

describeList :: [a] -> String  
describeList xs = "The list is " ++ case xs of [] -> "empty."  
                                               [x] -> "a singleton list."   
                                               xs -> "a longer list." 

sayMe :: (Integral a) => a -> String  
sayMe n = case n of
                1 -> "One!"
                2 -> "Two!"  
                3 -> "Three!" 
                otherwise -> "Not between 1 and 3"
main = do
    putStrLn "fuction with guards"
    print $ bmiTell 70 1.7
    print $ bmiTell 50 1.65
    print $ bmiTell 70 1.6
    print $ bmiTell 100 1.6
    putStrLn "define names in function with where"
    print $ bmiTell' 70 1.7
    print $ bmiTell' 50 1.65
    print $ bmiTell' 70 1.6
    print $ bmiTell' 100 1.6
    putStrLn "define names and functions with let"
    print $ [let square x = x * x in (square 5, square 3, square 2)]  
    print (let (a,b,c) = (1,2,3) in a+b+c)
    putStrLn "case expressions"
    print $ describeList []
    print $ describeList [1]
    print $ describeList [1, 2]
    print $ sayMe 1
    print $ sayMe 2
    print $ sayMe 7


