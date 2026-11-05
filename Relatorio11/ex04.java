import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        System.out.println("--- O Banquete da Masmorra ---");

        Slime gosma = new Slime("Slime gigante");
        Mandragora raiz = new Mandragora("Mandrágora");

        Cozinheiro chef = new Cozinheiro("Senshi", "adamantite");
        chef.adicionarIngrediente(gosma);
        chef.adicionarIngrediente(raiz);

        chef.servirBanquete();
    }
}

abstract class Monstro {
    private String identificacao;

    public Monstro(String identificacao) {
        this.identificacao = identificacao;
    }

    public String getNome() {
        return identificacao;
    }

    public abstract String receita();
}

class Slime extends Monstro {
    public Slime(String identificacao) {
        super(identificacao);
    }

    @Override
    public String receita() {
        return "seco ao sol e servido como gelatina";
    }
}

class Mandragora extends Monstro {
    public Mandragora(String identificacao) {
        super(identificacao);
    }

    @Override
    public String receita() {
        return "picada e frita em uma omelete";
    }
}

class Panela {
    private String tipoMaterial;

    public Panela(String tipoMaterial) {
        this.tipoMaterial = tipoMaterial;
    }

    public String getMaterial() {
        return tipoMaterial;
    }
}

class Cozinheiro {
    private String apelido;
    private Panela utensilio;
    private ArrayList<Monstro> listaMonstros;

    public Cozinheiro(String apelido, String materialDaPanela) {
        this.apelido = apelido;
        this.utensilio = new Panela(materialDaPanela);
        this.listaMonstros = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro criatura) {
        listaMonstros.add(criatura);
    }

    public void servirBanquete() {
        System.out.println(apelido + " serve o banquete na panela de " + utensilio.getMaterial() + ":");
        for (Monstro criatura : listaMonstros) {
            System.out.println("- " + criatura.getNome() + ": " + criatura.receita());
        }
    }
}
