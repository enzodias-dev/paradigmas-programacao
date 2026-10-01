#include <iostream>
#include <string>
using namespace std;

class MembroInatel {
public:
    string nome;

    void seApresentar() {
        cout << "Sou um membro da comunidade Inatel: "
             << nome << "." << endl;
    }
};

class Aluno : public MembroInatel {
public:
    string curso;

    void seApresentar() {
        cout << "Meu nome é " << nome
             << " e estudo no curso de "
             << curso << "." << endl;
    }
};

class Professor : public MembroInatel {
public:
    string disciplina;

    void seApresentar() {
        cout << "Meu nome é " << nome
             << " e leciono a disciplina de "
             << disciplina << "." << endl;
    }
};

int main() {
    Aluno aluno;
    Professor professor;

    aluno.nome = "Enzo";
    aluno.curso = "Engenharia da Computação";

    professor.nome = "Pedro";
    professor.disciplina = "Programacao Orientada a Objetos";

    aluno.seApresentar();
    professor.seApresentar();

    return 0;
}