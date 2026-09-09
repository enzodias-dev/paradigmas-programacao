package main

import "fmt"

func validarIngresso(setor string, codigo int) bool {
	if setor == "VIP" && codigo == 2026 {
		return true
	}

	return false
}

func main() {
	var setor string
	var codigo int

	for {
		fmt.Print("Digite o setor do ingresso: ")
		fmt.Scan(&setor)

		fmt.Print("Digite o código do ingresso: ")
		fmt.Scan(&codigo)

		valido := validarIngresso(setor, codigo)

		if valido {
			fmt.Println("Acesso liberado à área VIP!")
			break
		} else {
			fmt.Println("Ingresso ou setor inválido. Tente novamente.")
		}
	}
}