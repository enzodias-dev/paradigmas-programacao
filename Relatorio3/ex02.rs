use std::io;
 
fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    (palpite - numero_secreto).abs() <= 5
}
 
fn main() {
    let numero_secreto: i32 = 13;
 
    loop {
        let mut entrada = String::new();
        println!("Digite seu palpite:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler entrada");
 
        let palpite: i32 = match entrada.trim().parse() {
            Ok(n) => n,
            Err(_) => {
                println!("Digite um número válido!");
                continue;
            }
        };
 
        if acertou_o_alvo(palpite, numero_secreto) {
            let distancia = (palpite - numero_secreto).abs();
            println!("Parabéns, você acertou o alvo!");
            println!(
                "Você ficou a apenas {} unidade(s) do número secreto ({}).",
                distancia, numero_secreto
            );
            break;
        } else {
            println!("Você passou longe! Tente novamente.");
        }
    }
}
 