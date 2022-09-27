squared x = x * x

sumSquared x y = (squared x) + (squared y)

isNegative x = if x < 0
                then True
                else False
main = do
    putStrLn "squared 2"
    print $ squared 2
    putStrLn "sumSquared 3 2"
    print $ sumSquared 3 2
    putStrLn "isNegative -1"
    print $ isNegative (-1)