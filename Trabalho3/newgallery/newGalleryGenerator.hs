--
-- Este programa ilustra:
-- 1) Uso de registros (record syntax) em Haskell
-- 2) Leitura de arquivo CSV
--

--
-- Declara novo tipo de dado 'GalleryItem' usando record syntax
-- Cada GalleryItem é um registro formado por 3 campos / atributos
-- Com esta sintaxe, Haskell automaticamente cria funções de acesso aos campos
-- Por exemplo, dado um GalleryItem x, 'title x' vai retornar o atributo 'title' de x,
-- 'description x' vai retornar o atributo 'description' de x, e assim por diante
-- Mais sobre isso em: http://learnyouahaskell.com/making-our-own-types-and-typeclasses
--
data GalleryItem =
   GalleryItem {title :: String,
                description :: String,
                author :: String}
               
galleryItems :: [String]
galleryItems = ["T1_1.png","T2_1.png","T3_1.png","T4_1.png","T5_1.png","T6_1.png"]

	
-- Converte uma lista de String em um GalleryItem
toGalleryItem :: [String] -> GalleryItem
toGalleryItem [s1, s2, s3] = GalleryItem {title = s1, description = s2, author = s3}

-- Funcao principal que faz leitura de arquivo e mostra atributos de um item da galeria
main :: IO ()
main = do
    strcontent <- readFile infile				-- lê conteúdo do arquivo em string
    let strlist = map (splitOnChar ';') (lines strcontent);	-- extrai linhas e quebra cada uma delas
        itemlist = map (toGalleryItem) strlist;
        htlD = map(geraHtmlDesc) itemlist; -- cria um link para cada descrição/autor/titulo
        htlImg = geraHtmlImage(galleryItems); -- cria um link para cada imagem
        concatena = zipWith (++) htlImg htlD; -- concatena tudo em uma grande string
    writeFile outfile (cabecalho ++ unlines concatena ++ "</div></body></html>"); -- grava no template.html
    where 
    infile = "data.csv"
    outfile = "template.html"

cabecalho :: String
cabecalho = "<html xmlns=\"http://www.w3.org/1999/xhtml\"><head><title>Galeria de Trabalhos de Paradigmas de Programação</title><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><link href=\"style.css\" rel=\"stylesheet\" type=text/css><style type=\"text/css\"></style></head><body><div id=\"main\"><h1>Galeria de Trabalhos de Paradigmas de Programação</h1>"

geraHtmlDesc :: GalleryItem->String
geraHtmlDesc x = "</div><p><b>" ++ (title x) ++ "</b><br>" ++ (description x) ++ "<br>" ++ (author x) ++ "</p></div>"

geraHtmlImage :: [String]->[String]
geraHtmlImage x = 
		let a = map("<div class=\"csslisting\"><div class=\"floatbox\"><a href=\"image.html?src=./images/"++)x;
			b = auxGeraHtmlImage x;
		in zipWith(++) a b;

auxGeraHtmlImage :: [String]->[String]	
auxGeraHtmlImage x = 
		let a = map("&amp;height=450&amp;alt=Imagem 1\"><img src=\"./images/"++)x;
		in map(++"\"width=\"200\" border=\"0\"></a>")a;
			

-- Funcao que decompoe string usando um caracter delimitador
splitOnChar :: Char -> String -> [String]
splitOnChar x y = auxSplitOnChar x y [[]]

auxSplitOnChar :: Char -> String -> [String] -> [String]
auxSplitOnChar x [] z = reverse (map reverse z)
auxSplitOnChar x (y:ys) (z:zs) = 
	if y == x then 
            auxSplitOnChar x ys ([]:(z:zs)) 
        else 
            auxSplitOnChar x ys ((y:z):zs)
            
