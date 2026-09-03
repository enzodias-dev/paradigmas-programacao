use std::io;
 
fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64 {
    let npt = (prova1 + prova2) / 2.0;
    let pf = npt * 0.6 + redacao * 0.4;
 
    if pf >= 60.0 {
        println!("Parabéns! Candidato aprovado no processo seletivo.");
    } else {
        println!("Infelizmente o candidato não atingiu a pontuação mínima de aprovação.");
    }
 
    pf
}
 
fn ler_f64(mensagem: &str) -> f64 {
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
    let prova1 = ler_f64("Digite a nota da Prova Teórica 1:");
    let prova2 = ler_f64("Digite a nota da Prova Teórica 2:");
    let redacao = ler_f64("Digite a nota da Redação:");
 
    let pontuacao_final = calcular_pontuacao(prova1, prova2, redacao);
    println!("Pontuação Final: {:.2}", pontuacao_final);
}
 