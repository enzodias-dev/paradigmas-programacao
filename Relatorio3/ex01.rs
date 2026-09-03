use std::io;
 
fn validar_placa(placa: &str) -> bool {
    if placa.len() < 7 {
        return false;
    }
 
    let maiusculas = placa.chars().filter(|c| c.is_ascii_uppercase()).count();
    let numeros = placa.chars().filter(|c| c.is_numeric()).count();
 
    maiusculas >= 4 && numeros >= 2
}
 
fn main() {
    loop {
        let mut placa = String::new();
        println!("Digite a placa do veículo:");
        io::stdin().read_line(&mut placa).expect("Erro ao ler entrada");
        let placa = placa.trim();
 
        if validar_placa(placa) {
            println!("Placa cadastrada no sistema!");
            break;
        } else {
            println!("Placa inválida. Tente novamente!");
        }
    }
}
 
