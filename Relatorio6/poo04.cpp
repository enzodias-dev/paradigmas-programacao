#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Hobbit {
public:
    string nome;

    virtual void fazerAtividade() {
        cout << "O hobbit " << nome
             << " está aproveitando um dia tranquilo na Comarca."
             << endl;
    }
};

class Jardineiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O jardineiro " << nome
             << " está cuidando das flores e plantas ao redor das tocas!"
             << endl;
    }
};

class Cozinheiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O cozinheiro " << nome
             << " está preparando o segundo café da manhã para os convidados!"
             << endl;
    }
};

class Fazendeiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O fazendeiro " << nome
             << " está colhendo vegetais e hortaliças em suas terras!"
             << endl;
    }
};

int main() {
    vector<Hobbit*> hobbits;

    Jardineiro jardineiro;
    jardineiro.nome = "Sam";

    Cozinheiro cozinheiro;
    cozinheiro.nome = "Peregrin";

    Fazendeiro fazendeiro;
    fazendeiro.nome = "Merry";

    hobbits.push_back(&jardineiro);
    hobbits.push_back(&cozinheiro);
    hobbits.push_back(&fazendeiro);

    for (Hobbit* hobbit : hobbits) {
        hobbit->fazerAtividade();
    }

    return 0;
}