data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor :: Double
  , etapa :: Etapa
  }

descrever :: Atendimento -> String
descrever atendimento =
  "Cliente: " ++ cliente atendimento
    ++ " | Servico: " ++ servico atendimento
    ++ " | Etapa: " ++ show (etapa atendimento)

concluir :: Atendimento -> Atendimento
concluir atendimento = atendimento { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\a -> etapa a == Concluido) atendimentos))

main :: IO ()
main = do
  let atendimento1 =
        Atendimento "Sem Rosto" "Banho completo" 120.0 NaFila

  let atendimento2 =
        Atendimento "Deus do Rio" "Limpeza espiritual" 200.0 NoBanho

  let atendimento3 =
        Atendimento "Aogaeru" "Banho especial" 150.0 NaFila

  let atendimentos = [atendimento1, atendimento2, atendimento3]

  let atendimentosAtualizados =
        [ concluir atendimento1
        , atendimento2
        , concluir atendimento3
        ]

  putStrLn "--- Atendimentos originais ---"
  mapM_ (putStrLn . descrever) atendimentos

  putStrLn "--- Atendimentos atualizados ---"
  mapM_ (putStrLn . descrever) atendimentosAtualizados

  putStrLn "--- Valores arrecadados ---"
  putStrLn "Lista original:"
  print (arrecadado atendimentos)

  putStrLn "Lista atualizada:"
  print (arrecadado atendimentosAtualizados)