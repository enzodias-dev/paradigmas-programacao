class Persona:

    def __init__(self, nome: str, arcano: str):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Persona: {self.nome} | Arcano: {self.arcano}")


class Aliado:

    def __init__(self, nome: str, codinome: str):
        self.nome = nome
        self.codinome = codinome


class Lider:

    def __init__(self, codinome: str):
        self.codinome = codinome
        self.persona = Persona("Arsène", "Louco")
        self._equipe = []

    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado)

    def infiltrar(self, palacio: str):
        print(f"\nPalácio de {palacio} invadido!")

        self.persona.invocar()

        print(f"\nEquipe de {self.codinome}:")

        for aliado in self._equipe:
            print(
                f"Nome: {aliado.nome} | "
                f"Codinome: {aliado.codinome}"
            )


if __name__ == "__main__":

    aliado1 = Aliado("Ryuji Sakamoto", "Skull")
    aliado2 = Aliado("Ann Takamaki", "Panther")

    joker = Lider("Joker")

    joker.recrutar(aliado1)
    joker.recrutar(aliado2)

    joker.infiltrar("Kamoshida")