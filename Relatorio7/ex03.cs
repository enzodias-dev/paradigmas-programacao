using System;
using System.Collections.Generic;

public class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine($"Feitiço favorito: {FeiticoFavorito}");
    }
}

public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        Nome = nome;
        Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"{Nome} - {Funcao}");
    }
}

public class Maga
{
    public string Nome { get; set; }
    public Grimorio Grimorio { get; private set; }

    private List<Companheiro> companheiros;

    public Maga(string nome)
    {
        Nome = nome;

        // Composição: o grimório é criado dentro da Maga.
        Grimorio = new Grimorio();

        companheiros = new List<Companheiro>();
    }

    public void Recrutar(Companheiro c)
    {
        companheiros.Add(c);
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"Maga: {Nome}");
        Console.WriteLine("Companheiros:");

        foreach (Companheiro c in companheiros)
        {
            c.Apresentar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        // Os companheiros são criados antes da Maga.
        Companheiro fern = new Companheiro("Fern", "Aprendiz");
        Companheiro stark = new Companheiro("Stark", "Guerreiro");

        Maga frieren = new Maga("Frieren");

        frieren.Recrutar(fern);
        frieren.Recrutar(stark);

        frieren.Grimorio.FeiticoFavorito = "Zoltraak";

        frieren.MostrarGrupo();
        frieren.Grimorio.Abrir();
    }
}