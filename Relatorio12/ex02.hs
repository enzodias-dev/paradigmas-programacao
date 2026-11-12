pesoMaximo :: Double
pesoMaximo = 10.0

-- pesoMaximo = 12.0

data Encomenda = Encomenda
  { destinatario :: String
  , peso :: Double
  , frete :: Double
  }

descrever :: Encomenda -> String
descrever encomenda =
  "Destinatario: " ++ destinatario encomenda
    ++ " | Peso: " ++ show (peso encomenda) ++ " kg"
    ++ " | Frete: R$ " ++ show (frete encomenda)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas =
  filter (\e -> peso e <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas =
  sum (map frete encomendas)

main :: IO ()
main = do
  let encomendas =
        [ Encomenda "Tombo" 4.5 15.0
        , Encomenda "Osono" 8.0 20.0
        , Encomenda "Ursula" 12.5 30.0
        , Encomenda "Kokiri" 6.0 18.0
        ]

  let encomendasPossiveis = cabemNaVassoura encomendas

  putStrLn "--- Todas as encomendas ---"
  mapM_ (putStrLn . descrever) encomendas

  putStrLn "--- Encomendas que cabem na vassoura ---"
  mapM_ (putStrLn . descrever) encomendasPossiveis

  putStrLn "--- Total de fretes das encomendas aceitas ---"
  print (totalDeFretes encomendasPossiveis)