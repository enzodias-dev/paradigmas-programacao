#include <iostream>
using namespace std;

int main() {
    float capacidade;
    float cargaAtual = 0.0;
    float pesoPacote;
    int opcao;

    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> capacidade;

    do {
        cout << endl;
        cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;

        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {

            case 1:
                cout << endl;
                cout << "Carga Atual: "
                     << cargaAtual << " kg / "
                     << capacidade << " kg" << endl;

                cout << "Espaco Disponivel: "
                     << capacidade - cargaAtual << " kg" << endl;
                break;

            case 2:
                cout << endl;
                cout << "Digite o peso do pacote a ser carregado (kg): ";
                cin >> pesoPacote;

                if (cargaAtual + pesoPacote <= capacidade) {
                    cargaAtual = cargaAtual + pesoPacote;

                    cout << "Pacote adicionado com sucesso!" << endl;
                }
                else {
                    cout << "Alerta: Peso maximo de decolagem excedido! "
                         << "Operacao cancelada." << endl;
                }
                break;

            case 3:
                cout << endl;
                cout << "Digite o peso do pacote a ser descarregado (kg): ";
                cin >> pesoPacote;

                if (pesoPacote <= cargaAtual) {
                    cargaAtual = cargaAtual - pesoPacote;

                    cout << "Pacote descarregado com sucesso!" << endl;
                }
                else {
                    cout << "Alerta: Nao e possivel remover mais peso "
                         << "do que o que esta carregado." << endl;
                }
                break;

            case 4:
                cout << endl;
                cout << "Encerrando sistema de telemetria..." << endl;
                break;

            default:
                cout << endl;
                cout << "Opcao invalida!" << endl;
        }

    } while (opcao != 4);

    return 0;
}