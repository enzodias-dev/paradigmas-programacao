data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) =
  nome ++ " - R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido pediuLeite (Cafe _ preco _) =
  if pediuLeite
    then preco + 2.0
    else preco

main :: IO ()
main = do
  let cafeSuave = Cafe "Cafe da Manha" 6.50 3
  let cafeEquilibrado = Cafe "Cafe da Casa" 8.00 6
  let cafeForte = Cafe "Expresso Leblanc" 9.50 9

  let cafes = [cafeSuave, cafeEquilibrado, cafeForte]

  putStrLn "--- Cafes do dia ---"
  mapM_ putStrLn (map descrever cafes)

  putStrLn "--- Intensidade ---"
  mapM_ (putStrLn . forca) cafes

  putStrLn "--- Preco do pedido ---"
  putStrLn "Cafe forte com leite:"
  print (precoDoPedido True cafeForte)

  putStrLn "Cafe forte sem leite:"
  print (precoDoPedido False cafeForte)