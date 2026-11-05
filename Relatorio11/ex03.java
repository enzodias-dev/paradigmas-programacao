import java.util.HashMap;

public class Main {
    public static void main(String[] args) {
        System.out.println("--- Mapa de Avistamentos ---");

        Alienigena visitante = new Alienigena("Serpoiano");
        EspiritoYoukai fantasma = new EspiritoYoukai("Vovó Turbo");

        MapaDeAvistamentos registro = new MapaDeAvistamentos();
        registro.registrar("Hospital abandonado", visitante);
        registro.registrar("Túnel", fantasma);

        registro.investigar("Hospital abandonado");
        registro.investigar("Túnel");
        registro.investigar("Escola");
    }
}

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String apelido;

    public Alienigena(String apelido) {
        this.apelido = apelido;
    }

    @Override
    public void manifestar() {
        System.out.println(apelido + " desce de um disco voador e tenta abduzir quem está investigando!");
    }
}

class EspiritoYoukai implements Sobrenatural {
    private String apelido;

    public EspiritoYoukai(String apelido) {
        this.apelido = apelido;
    }

    @Override
    public void manifestar() {
        System.out.println(apelido + " aparece do nada e persegue quem está investigando!");
    }
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> registros;

    public MapaDeAvistamentos() {
        this.registros = new HashMap<>();
    }

    public void registrar(String lugar, Sobrenatural criatura) {
        registros.put(lugar, criatura);
    }

    public void investigar(String lugar) {
        System.out.println("--- Investigando: " + lugar + " ---");
        Sobrenatural encontrada = registros.get(lugar);

        if (encontrada == null) {
            System.out.println("O local está tranquilo.");
        } else {
            encontrada.manifestar();
        }
    }
}
