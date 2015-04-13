--Este programa lÃª um arquivo CSV, com 2 dados por linha. Cada linha Ã© transformada numa tupla. 
-- A lista de tuplas Ã© passada para uma funÃ§Ã£o que vai gerar uma longa string representando um
-- documento HTML.
--

main :: IO ()
main = do
    strcontent <- readFile infile
    let listofstrlist = map (splitOnChar ',') (lines strcontent)
        strtuplelist = map (\lis -> (head lis, last lis)) listofstrlist
    writeFile outfile (mkHtmlURLItemsDoc "Usuarios Cadastrados no NCC" strtuplelist)
    where 
    infile = "logins.csv"
    outfile = "output.html"

-- Esta funÃ§Ã£o deve ser alterada para chamar outras funÃ§Ãµes que vÃ£o
-- construir o documento HTML
mkHtmlURLItemsDoc :: String -> [(String,String)] -> String
mkHtmlURLItemsDoc title lis = "Usuarios Cadastrados no NCC\n" ++ "<html><body><ul>" ++ concat(geraHtml lis) ++ "<ul><body><html>"

geraHtml :: [(String,String)] -> [String] 
geraHtml x = 
		let a = map(fst) x;
			b = map(snd) x;
			c = concatLogin b;
			d = concatNome c a;
		in map(++"</a></li>\n") d;
		
concatNome :: [String] -> [String] -> [String]
concatNome x y = zipWith (++) x y
		
concatLogin :: [String] -> [String]
concatLogin x = 
		let a = map("<li><a href=http://www.inf.ufsm.br/~"++) x;
		in map(++">") a;
		
-- Decompoe string usando um caracter delimitador
splitOnChar :: Char -> String -> [String]
splitOnChar x y = auxSplitOnChar x y [[]]

auxSplitOnChar :: Char -> String -> [String] -> [String]
auxSplitOnChar x [] z = reverse (map reverse z)
auxSplitOnChar x (y:ys) (z:zs) = 
	if y == x then 
            auxSplitOnChar x ys ([]:(z:zs)) 
        else 
            auxSplitOnChar x ys ((y:z):zs)