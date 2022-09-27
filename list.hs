list = [1, 2, 3, 4]

main = do
    putStrLn "list"
    print list
    putStrLn "concat lists"
    print $ list ++ [5, 6, 7]
    putStrLn "concat lists of characters"
    print $ ['h','e'] ++ ['l', 'l', 'o']
    putStrLn "concat strings"
    print $ "hello" ++ " " ++ "world"
    putStrLn "add an element to the start of a list"
    print $ 5:list
    putStrLn "add an character to the start of a string"
    print $ 'a':" cat"
    putStrLn "get a element by index"
    print $ list !! 2
    putStrLn "first element"
    print $ head list
    putStrLn "remove first element"
    print $ tail list
    putStrLn "last element"
    print $ last list
    putStrLn "remove last element"
    print $ init list
    putStrLn "length of a list"
    print $ length list
    putStrLn "check if a list is empty"
    print $ null list
    putStrLn "get first n elements"
    print $ take 3 list    
    putStrLn "get last n elements"
    print $ take 2 list
    putStrLn "min of a list of numbers"
    print $ minimum list
    putStrLn "max of a list of numbers"
    print $ maximum list
    putStrLn "sum of a list of numbers"
    print $ sum list
    putStrLn "product of a list of numbers"
    print $ product list
    putStrLn "check if a list contains a element"
    print $ 3 `elem` list
    putStrLn "range of numbers"
    print [2..15]
    putStrLn "range of odd numbers"
    print [1, 3..15]
    putStrLn "range of characters"
    print ['b'..'l']
    putStrLn "cycle list"
    print $ take 20 (cycle list)
    putStrLn "repeat a element"
    print $ take 10 (repeat 2)