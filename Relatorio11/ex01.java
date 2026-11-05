public class Main {
    public static void main(String[] args) {
        System.out.println("--- Os Moradores do Castelo ---");

        Morador personagem1 = new Mago("Howl", "virar um pássaro gigante");
        Morador personagem2 = new DemonioDoFogo("Calcifer");

        personagem1.apresentar();
        personagem2.apresentar();
    }
}

abstract class Morador {
    private String nomeMorador;

    public Morador(String nomeMorador) {
        this.nomeMorador = nomeMorador;
    }

    public String getNome() {
        return nomeMorador;
    }

    public abstract void apresentar();
}

class Mago extends Morador {
    private String magia;

    public Mago(String nomeMorador, String magia) {
        super(nomeMorador);
        this.magia = magia;
    }

    @Override
    public void apresentar() {
        System.out.println("Sou o mago " + getNome() + " e meu feitiço é " + magia + ".");
    }
}

class DemonioDoFogo extends Morador {
    public DemonioDoFogo(String nomeMorador) {
        super(nomeMorador);
    }

    @Override
    public void apresentar() {
        System.out.println("Sou " + getNome() + ", o demônio do fogo, e faço o castelo andar!");
    }
}
