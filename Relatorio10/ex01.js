class Pokemon {
    #vida;

    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    get vida() {
        return this.#vida;
    }

    sofrerDano(pontos) {
        this.#vida = Math.max(0, this.#vida - pontos);
        console.log(`${this.apelido} ficou com ${this.#vida} de vida.`);
    }

    atacar(alvo) {
        console.log(`${this.apelido} atacou ${alvo.apelido}!`);
        alvo.sofrerDano(10);
    }
}

class Squirtle extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Água', vidaInicial);
    }

    atacar(alvo) {
        console.log(`${this.apelido} usou Jato de Água contra ${alvo.apelido}!`);
        alvo.sofrerDano(20);
    }
}

class Bulbasaur extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Planta', vidaInicial);
    }

    atacar(alvo) {
        console.log(`${this.apelido} usou Chicote de Vinha contra ${alvo.apelido}!`);
        alvo.sofrerDano(15);
    }
}

const squirtle = new Squirtle('Tartaruga', 100);
const bulbasaur = new Bulbasaur('Folhinha', 30);

bulbasaur.atacar(squirtle);
squirtle.atacar(bulbasaur);
squirtle.atacar(bulbasaur);

console.log(`Vida do ${squirtle.apelido}: ${squirtle.vida}`);
console.log(`Vida do ${bulbasaur.apelido}: ${bulbasaur.vida}`);