list = [1, 2, 3, 4]

divBy3And8 xs = [ x | x <- xs, x `mod` 3 == 0, x `mod` 8 == 0]  
multiplyOddEven range = [ x*y | x <- range, y <- range, x `mod` 2 == 0, y `mod` 2 /= 0] 
checkPositive xs = [ if x > 0 then True else False | x <- xs]
names = ["James","Robert","Mary", "Patricia"]
surnames = ["Smith","Jones","Taylor", "Brown"]
numberToWord = zip [1 .. 5] ["one", "two", "three", "four", "five"]

main = do
    putStrLn "---list"
    print list
    putStrLn "---concat lists"
    print $ list ++ [5, 6, 7]
    putStrLn "---concat lists of characters"
    print $ ['h','e'] ++ ['l', 'l', 'o']
    putStrLn "---concat strings"
    print $ "hello" ++ " " ++ "world"
    putStrLn "---add an element to the start of a list"
    print $ 5:list
    putStrLn "---add an character to the start of a string"
    print $ 'a':" cat"
    putStrLn "---get a element by index"
    print $ list !! 2
    putStrLn "---first element"
    print $ head list
    putStrLn "---remove first element"
    print $ tail list
    putStrLn "---last element"
    print $ last list
    putStrLn "---remove last element"
    print $ init list
    putStrLn "---length of a list"
    print $ length list
    putStrLn "---check if a list is empty"
    print $ null list
    putStrLn "---get first n elements"
    print $ take 3 list    
    putStrLn "---get last n elements"
    print $ drop 2 list
    putStrLn "---min of a list of numbers"
    print $ minimum list
    putStrLn "---max of a list of numbers"
    print $ maximum list
    putStrLn "---sum of a list of numbers"
    print $ sum list
    putStrLn "---product of a list of numbers"
    print $ product list
    putStrLn "---check if a list contains a element"
    print $ 3 `elem` list
    putStrLn "---range of numbers"
    print [2..15]
    putStrLn "---range of odd numbers"
    print [1, 3..15]
    putStrLn "---range of characters"
    print ['b'..'l']
    putStrLn "---cycle list"
    print $ take 20 (cycle list)
    putStrLn "---repeat a element"
    print $ take 10 (repeat 2)
    putStrLn "---list comprehension"
    print $ [x*2 | x <- [1..10]] 
    putStrLn "---numbers from 50 to 100 divisible by 4"
    print $ [ x | x <- [50..100], x `mod` 4 == 0] 
    putStrLn "---numbers from 50 to 100 divisible by 3 and 8"
    print $ divBy3And8 [50..100]
    putStrLn "---multiply odd and even from 1 to 5"
    print $ multiplyOddEven [1..5]
    putStrLn "---check positive numbers"
    print $ checkPositive [-1, -2, 0, 1, 2]
    putStrLn "---combine strings"
    print $ [name ++ " " ++ surname | name <- names, surname <- surnames] 
    putStrLn "---zip a list of pairs of numbers and words"
    print $ numberToWord
    putStrLn "---get the first component of a pair"
    print $ fst (head numberToWord)
    putStrLn "---get the second component of a pair"
    print $ snd (head numberToWord)
