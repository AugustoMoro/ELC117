hasEqHeads :: [Int]->[Int]->Bool
hasEqHeads x y = if head x == head y then True else False


add10 :: [Int]->[Int]
add10 [] = []
add10 x = (head x) + 10 : add10 (tail x)


addComma :: [String]->[String]
addComma [] = []
addComma x = ((head x) ++ ",") : addComma (tail x)


add10Map :: [Int] -> [Int]
add10Map x = map(+10) x


addCommaMap :: [String] -> [String]
addCommaMap x = map(++",")x


htmlListItems :: [String] -> [String]  
htmlListItems [] = []
htmlListItems x = ("<LI>" ++ (head x) ++ "</LI>") : htmlListItems(tail x)
 

charFound1 :: Char -> String -> Bool 
charFound1 x y
			|y == [] = False
			|x == head y = True
			|x /= head y = charFound1 x (tail y)


charFound2 :: Char -> String -> Bool
charFound2 x y
			|filter (== x) y /= [] = True
			|filter (== x) y == [] = False


soma :: [Int]->[Int]->[Int]
soma x y = zipWith (-) x y


calcPol :: [Int]->[Int]
calcPol x = map(\x -> 2 * x + 1) x 


calcPol2 :: [Int]->[Int]->[Int]
calcPol2 x y = zipWith(\x y -> 4 * x + 2 * y + 1) x y 


truncS :: [String]->[String]
truncS [] = []
truncS x = (if length(head x) > 10 
			then take 10 (head x) 
			else (head x ++ replicate (10 - length(head x)) '.')) : truncS(tail x)


calculaAno :: [Int]->[Int]
calculaAno [] = []
calculaAno x = map(2015-)(filter(>20)x)
