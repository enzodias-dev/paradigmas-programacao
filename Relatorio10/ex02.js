class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }

    usarHabilidade() {
        throw new Error('A classe filha deve implementar usarHabilidade().');
    }

    entrarEmCombate() {
        const habilidade = this.usarHabilidade();
        console.log(`${this.codinome} entrou em combate com ${this.#pistola.modelo}. Habilidade: ${habilidade}`);
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Fumaça lançada para bloquear a visão dos inimigos.';
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Dispositivo de reconhecimento ativado para localizar inimigos.';
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return 'Avanço ofensivo para eliminar os adversários.';
    }
}

class Esquadrao {
    #agentes;

    constructor(nome, agentes) {
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida() {
        console.log(`Esquadrão ${this.nome} iniciando a partida!`);

        this.#agentes.forEach(agente => {
            agente.entrarEmCombate();
        });
    }

    listarControladores() {
        return this.#agentes.filter(agente => agente instanceof Controlador);
    }
}

const omen = new Controlador('Omen', 'Ghost');
const brimstone = new Controlador('Brimstone', 'Sheriff');
const sova = new Iniciador('Sova', 'Classic');
const jett = new Duelista('Jett', 'Frenzy');

const esquadrao = new Esquadrao('Alpha', [omen, brimstone, sova, jett]);

esquadrao.iniciarPartida();

console.log('Controladores do esquadrão:');

esquadrao.listarControladores().forEach(agente => {
    console.log(agente.codinome);
});

const agenteBase = new AgenteProtocolo('AgenteBase', 'Classic');