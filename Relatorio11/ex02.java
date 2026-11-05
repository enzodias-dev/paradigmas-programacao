import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        System.out.println("--- Cardápio do Leblanc ---");

        ItemDoCardapio bebida = new ItemDoCardapio("Café coado", 8.0);
        ItemDoCardapio prato = new ItemDoCardapio("Curry da casa", 22.0);
        ComboLeblanc promocao = new ComboLeblanc("Combo curry + café", 30.0);

        CafeLeblanc lanchonete = new CafeLeblanc();
        lanchonete.adicionar(bebida);
        lanchonete.adicionar(prato);
        lanchonete.adicionar(promocao);

        lanchonete.mostrarCardapio();
    }
}

class ItemDoCardapio {
    private String titulo;
    private double valor;

    public ItemDoCardapio(String titulo, double valor) {
        this.titulo = titulo;
        this.valor = valor;
    }

    public String getNome() {
        return titulo;
    }

    public double getPreco() {
        return valor;
    }

    public double precoFinal() {
        return valor;
    }
}

class ComboLeblanc extends ItemDoCardapio {
    public ComboLeblanc(String titulo, double valor) {
        super(titulo, valor);
    }

    @Override
    public double precoFinal() {
        return getPreco() * 0.9;
    }
}

class CafeLeblanc {
    private ArrayList<ItemDoCardapio> listaItens;

    public CafeLeblanc() {
        this.listaItens = new ArrayList<>();
    }

    public void adicionar(ItemDoCardapio produto) {
        listaItens.add(produto);
    }

    public void mostrarCardapio() {
        for (ItemDoCardapio produto : listaItens) {
            System.out.println(produto.getNome() + " - R$ " +
                String.format(java.util.Locale.forLanguageTag("pt-BR"), "%.2f", produto.precoFinal()));
        }
    }
}
