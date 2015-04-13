import Data.Char
import Data.List

firstName :: String->String
firstName x
		|head x == ' ' = []
		|otherwise = (head x) : firstName(tail x) 

firstName' :: String->String
firstName' x = takeWhile(/=' ') x

lastName :: String->String
lastName x =
		let z = takeWhile(/=' ')(reverse x)
		in reverse z

userName :: String->String
userName nome =
		let sobre = takeWhile(/=' ')(reverse nome)
		in map(toLower)([(head nome)] ++ (reverse(sobre)))

encodeName :: String -> String
encodeName x = concat (map (troca) x)
	where troca x
		| x == 'a' || x == 'A' = "4"
		| x == 'e' || x == 'E' = "3" 
		| x == 'i' || x == 'I' = "1" 
		| x == 'o' || x == 'O' = "0" 
		| x == 'u' || x == 'U' = "00"
		| otherwise = [x]

isElem :: Int->[Int]->Bool
isElem x y = elem x y

contaVogal :: String->Int
contaVogal [] = 0
contaVogal x
		|(head x) == 'a' = (1 + contaVogal(tail x)) 
		|(head x) == 'e' = (1 + contaVogal(tail x)) 
		|(head x) == 'i' = (1 + contaVogal(tail x)) 
		|(head x) == 'o' = (1 + contaVogal(tail x)) 
		|(head x) == 'u' = (1 + contaVogal(tail x))
		|otherwise = contaVogal(tail x)

contaConsoante :: String->Int
contaConsoante x  =
				let a = length(filter(=='a')x);
					e = length(filter(=='e')x);
					i = length(filter(=='i')x);
					o = length(filter(=='o')x);
					u = length(filter(=='u')x);
					esp = length(filter(==' ')x);
				in length(x) - (a + e + i + o + u + esp)


isInt :: String->Bool
isInt x = 
	let a = and(map(>='0')x);
		b = and(map(<='9')x);
	in (a && b)

strToInt :: String->Int
strToInt x = 
		let list = map ord x;
			a = and (map(>=48)list);
			b = and (map(<=57)list);
			c = (a && b);
			d = map(-48+)list;
			e = map(10^)([0,1..]);
		in if(c == True) then (sum (zipWith (*) (reverse d) e)) else 0

