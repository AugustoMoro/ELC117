import Data.Char
--any

isElem :: Int->[Int]->Bool --Exercicio 6 da lista, feito com any
isElem x y = any(==x)y

orFunction :: [Bool]->Bool -- Funçao or de haskell implementada com any
orFunction x = any(==True)x

--all

andFunction :: [Bool]->Bool -- Funçao and de haskell implementada com all
andFunction x = all(==True)x

isInt :: String->Bool -- Exercicio 9 da lista feito com all
isInt x = 
	let a = all(>'0')x;
		b = all(<'9')x;
	in (a && b);

-- $

strToInt :: String->Int  -- Exercicio 10 da lista implementado com $
strToInt x = 
		let list = map ord x;
			a = and $ map(>=48)list;
			b = and $ map(<=57)list;
			c = (a && b);
			d = map(-48+)list;
			e = map(10^)([0,1..]);
		in if(c == True) then (sum $ zipWith (*) (reverse d) e) else 0

sumMult :: [Int]->Int -- Soma todos elementos maiores que
sumMult x = sum $ filter(>10) $ map(2*)x  -- 10 de uma lista de numeros multiplicada por 2 

-- Composição de funções

menosSin :: [Float]->[Float] -- Calcula o seno de uma lista de
menosSin x = map(negate . sin) x -- numeros e inverte o sinal do resultado

raizReal :: [Float]->[Float] -- Recebe uma lista de numeros, se hoverem numeros negativos,
raizReal x = map(sqrt . abs)x -- inverte e os transforma para positivos e por ultimo calcula sua raiz quadrada