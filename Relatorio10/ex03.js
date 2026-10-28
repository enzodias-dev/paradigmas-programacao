class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever() {
        return `Criatura: ${this.criatura} | Nível de perigo: ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso {
    #fichas = [];

    constructor(numero) {
        this.numero = numero;
    }

    anotar(criatura, nivelDePerigo) {
        const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(ficha);
    }

    exibirFichas() {
        console.log(`Diário número ${this.numero}`);

        this.#fichas.forEach(ficha => {
            console.log(ficha.descrever());
        });
    }
}

class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio {
    #funcionarios = [];

    constructor(dono) {
        this.dono = dono;
    }

    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas() {
        console.log(`A Cabana do Mistério abriu! Dono: ${this.dono}`);

        this.#funcionarios.forEach(funcionario => {
            console.log(`${funcionario.nome} - ${funcionario.cargo}`);
        });
    }
}

const diario = new DiarioMisterioso(3);

diario.anotar('Gnomo', 4);
diario.anotar('Bill Cipher', 10);
diario.anotar('Zumbi', 7);

diario.exibirFichas();

const dipper = new Funcionario('Dipper', 'Pesquisador');
const mabel = new Funcionario('Mabel', 'Atendente');

const cabana = new CabanaDoMisterio('Stanley Pines');

cabana.contratar(dipper);
cabana.contratar(mabel);

cabana.abrirAsPortas();