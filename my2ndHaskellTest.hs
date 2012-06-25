import Test.QuickCheck

mySum :: [Int] -> Int
mySum xs = mySum' 0 xs
    where
        mySum' acc [] = acc
        mySum' acc (x:xs) = mySum' (acc + x) xs

prop_Sum xs = mySum xs == sum xs
    where
        types = xs :: [Int]

main=quickCheck prop_Sum