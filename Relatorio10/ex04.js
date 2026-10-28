class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo) {
        console.log(`${this.nome} lançou um ataque genérico de aura contra ${alvo.nome}!`);
    }
}

class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} concentrou sua aura nos punhos e atacou ${alvo.nome}!`);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} transformou sua aura em eletricidade e atacou ${alvo.nome}!`);
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} materializou uma corrente e atacou ${alvo.nome}!`);
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma {
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(`Aranhas avistadas em ${this.cidade}:`);

        this.#aranhas.forEach(aranha => {
            console.log(`Número ${aranha.numero}: ${aranha.nome}`);
        });
    }

    buscarAranha(numero) {
        return this.#aranhas.find(aranha => aranha.numero === numero);
    }
}

const chrollo = new Aranha('Chrollo', 0);
const feitan = new Aranha('Feitan', 2);

const trupe = new TrupeFantasma('Yorknew', [chrollo, feitan]);

trupe.revelarAranhas();

const alvo = trupe.buscarAranha(2);

if (alvo) {
    const hunters = [
        new Intensificador('Gon'),
        new Transmutador('Killua'),
        new Materializador('Kurapika')
    ];

    hunters.forEach(hunter => {
        hunter.atacar(alvo);
    });
}