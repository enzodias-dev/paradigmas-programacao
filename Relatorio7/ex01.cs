
using System;

public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }

    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        Nome = nome;
        Povo = povo;
        Posto = posto;
    }

    public void Equipar(string arma)
    {
        Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine($"Nome: {Nome}");
        Console.WriteLine($"Povo: {Povo}");
        Console.WriteLine($"Posto: {Posto}");

        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }

        Console.WriteLine();
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        CombatenteDeGondor c1 =
            new CombatenteDeGondor("Aragorn", "Dúnedain", "Capitão");

        CombatenteDeGondor c2 =
            new CombatenteDeGondor("Faramir", "Homem", "Comandante");

        CombatenteDeGondor c3 =
            new CombatenteDeGondor("Beregond", "Homem", "Soldado");

        c1.Equipar("Espada");
        c2.Equipar("Arco");

        c1.ApresentarUnidade();
        c2.ApresentarUnidade();
        c3.ApresentarUnidade();

        // c1.Posto = "Rei";
        // Erro: Posto possui private set e não pode ser alterado na Main.
    }
}