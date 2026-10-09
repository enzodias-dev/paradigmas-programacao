using System;
using System.Collections.Generic;

public class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        Nome = nome;
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"Entidade: {Nome}");

        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem: {Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        // Sobrescreve sem chamar o método da classe base.
        Console.WriteLine($"{Nome} emerge das profundezas!");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        // Executa primeiro o método da classe base.
        base.Manifestar();

        Console.WriteLine($"{Nome} manifesta sua presença!");
    }
}

public class Pesquisador
{
    public string Nome { get; set; }

    private List<EntidadeCosmica> catalogo;

    public Pesquisador(string nome)
    {
        Nome = nome;
        catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica e)
    {
        catalogo.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"Pesquisador: {Nome}");
        Console.WriteLine("=== Catálogo ===");

        foreach (EntidadeCosmica entidade in catalogo)
        {
            entidade.Manifestar();
            Console.WriteLine();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Profundo profundo = new Profundo("Dagon");
        MiGo migo = new MiGo("Mi-Go");
        EntidadeCosmica cthulhu = new EntidadeCosmica("Cthulhu");

        profundo.Origem = "Oceanos";
        cthulhu.Origem = "R'lyeh";

        Pesquisador pesquisador =
            new Pesquisador("Henry Armitage");

        pesquisador.Catalogar(profundo);
        pesquisador.Catalogar(migo);
        pesquisador.Catalogar(cthulhu);

        pesquisador.LerCatalogo();
    }
}