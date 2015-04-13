import Data.Char

userName :: String->String
userName nome =
		let a = takeWhile(/=' ') (reverse nome);
			b = map(toLower) ([(head nome)] ++ (reverse(a)));
		in (nome ++ "," ++ b);

geraUser :: [String]->[String]
geraUser x = map(userName) x

main :: IO ()
main = do
    strcontent <- readFile "nomes.csv"
    let strlist = lines strcontent
        strnew = geraUser(strlist)
    writeFile "logins.csv" (unlines strnew)