#include <iostream>
#include <string>
using namespace std;

class Banda {
public:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    void duelar(Banda &rival) {
        cout << nome << " está duelando contra " << rival.nome << "!" << endl;
        rival.energia -= potenciaSom;
    }

    void exibirStatus() {
        cout << "Banda: " << nome << endl;
        cout << "Integrantes: " << integrantes << endl;
        cout << "Potencia do som: " << potenciaSom << endl;
        cout << "Energia da plateia: " << energia << endl;
        cout << endl;
    }
};

int main() {
    Banda banda1;
    Banda banda2;

    banda1.nome = "Banda A";
    banda1.integrantes = 5;
    banda1.potenciaSom = 30;
    banda1.energia = 100;

    banda2.nome = "Banda B";
    banda2.integrantes = 4;
    banda2.potenciaSom = 20;
    banda2.energia = 100;

    banda1.duelar(banda2);

    cout << "\nStatus apos o confronto:\n\n";

    banda1.exibirStatus();
    banda2.exibirStatus();

    return 0;
}