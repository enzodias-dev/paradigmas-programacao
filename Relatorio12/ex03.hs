data Esboco = Esboco
  { titulo :: String
  , tecnica :: String
  , horas :: Int
  }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "O caderno esta vazio."
esbocoMaisRecente (e:_) =
  "Esboco mais recente: " ++ titulo e ++ " - Tecnica: " ++ tecnica e

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  let caderno =
        [ Esboco "Castelo Abandonado" "Nanquim" 3
        , Esboco "Criatura da Floresta" "Carvao" 2
        , Esboco "Paisagem Sombria" "Grafite" 4
        ]

  putStrLn "--- Caderno original ---"
  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Quantidade de esbocos: " ++ show (contarEsbocos caderno))
  putStrLn ("Total de horas: " ++ show (horasDesenhando caderno))

  putStrLn "--- Caderno vazio ---"
  putStrLn (esbocoMaisRecente [])

  let cadernoNovo =
        Esboco "Dragao Antigo" "Grafite" 5 : caderno

  putStrLn "--- Comparacao dos cadernos ---"
  putStrLn ("Original: " ++ esbocoMaisRecente caderno)
  putStrLn ("Quantidade no original: " ++ show (contarEsbocos caderno))

  putStrLn ("Novo: " ++ esbocoMaisRecente cadernoNovo)
  putStrLn ("Quantidade no novo: " ++ show (contarEsbocos cadernoNovo))

  -- print (titulo (head ([] :: [Esboco])))