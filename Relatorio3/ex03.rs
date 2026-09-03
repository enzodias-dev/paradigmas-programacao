use std::io;
 
fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32) {
    println!("--- Números no intervalo terminados em {} ---", digito);
    for numero in limite_inferior..=limite_superior {
        if numero % 10 == digito {
            println!("{}", numero);
        }
    }
}
 
fn ler_i32(mensagem: &str) -> i32 {
    loop {
        let mut entrada = String::new();
        println!("{}", mensagem);
        io::stdin().read_line(&mut entrada).expect("Erro ao ler entrada");
        match entrada.trim().parse() {
            Ok(n) => return n,
            Err(_) => println!("Digite um número válido!"),
        }
    }
}
 
fn main() {
    let digito = ler_i32("Digite o dígito final desejado (0 a 9):");
    let limite_inferior = ler_i32("Digite o limite inferior:");
    let limite_superior = ler_i32("Digite o limite superior:");
 
    imprimir_terminados_em(digito, limite_inferior, limite_superior);
}
 