package main

import "fmt"

func main() {
	var vendas1, vendas2, vendas3 int

	fmt.Print("Digite as vendas do 1º trimestre: ")
	fmt.Scan(&vendas1)

	fmt.Print("Digite as vendas do 2º trimestre: ")
	fmt.Scan(&vendas2)

	fmt.Print("Digite as vendas do 3º trimestre: ")
	fmt.Scan(&vendas3)

	total := vendas1 + vendas2 + vendas3

	fmt.Println("Total de vendas:", total, "unidades")

	if total < 100 {
		fmt.Println("Meta mínima anual não atingida!")
	} else {
		switch {
		case total >= 250:
			fmt.Println("Classificação: Categoria Top Seller")

		case total >= 180:
			fmt.Println("Classificação: Categoria Sênior")

		default:
			fmt.Println("Classificação: Categoria Pleno")
		}
	}
}