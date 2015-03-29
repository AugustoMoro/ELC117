geraPotencias :: Int->[Int]
geraPotencias x = [2^x | x <- [x,x-1..x-x]]

addSuffix :: String -> [String] -> [String]
addSuffix x y = [y ++ x| y <- y]

anosDeNascimento :: [Int] -> [Int]
anosDeNascimento x = [2015 - x | x <- x, x > 20]