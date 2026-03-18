// Herança: Uma classe pode herdar atributos e métodos de outra classe.
// • Polimorfismo: Uma mesma função pode ter comportamentos diferentes em
// subclasses.
// • Encapsulamento: Controle de acesso aos dados com private, public,
// internal, fileprivate e open

//MARK: - Herança

//SuperClasse ou Classe Pai
class Animal {
    //MARK: - Encapsulamento
    //Propriedade Privada
    private var nome: String

    //MARK: - Init
    //Construtor
    init(nome: String) {
        self.nome = nome
    }

    //MARK: - Metodos
    //Metodo Publico
    func fazerSom() {
        print("Som genérico de animal")
    }

    //Metodo Publico
    func getNome() -> String {
        return self.nome
    }
}

//SubClasse ou Classe Filha
class Cachorro: Animal {
    //MARK: - Init
    //Construtor
    override init(nome: String) {
        super.init(nome: nome)
    }

    //MARK: - Metodos
    //Polimorfismo - Sobreescrita de método
    override func fazerSom() {
        print("Au Au!")
    }
}

//SubClasse ou Classe Filha
class Gato: Animal {
    //MARK: - Init
    //Construtor
    override init(nome: String) {
        super.init(nome: nome)
    }

    //MARK: - Metodos
    //Polimorfismo - Sobreescrita de método
    override func fazerSom() {
        print("Miau!")
    }
}

//MARK: - Execução

//Criando instancias das classes
let animalGenerico = Animal(nome: "Animal Generico")
let meuCachorro = Cachorro(nome: "Rex")
let meuGato = Gato(nome: "Snow")

//Acessando metodos
animalGenerico.fazerSom() // Imprime "Som genérico de animal"
print(animalGenerico.getNome()) // Imprime "Animal Generico"

meuCachorro.fazerSom() // Imprime "Au Au!"
print(meuCachorro.getNome()) // Imprime "Rex"

meuGato.fazerSom() // Imprime "Miau!"
print(meuGato.getNome()) // Imprime "Snow"

//MARK: - Polimorfismo

//Criando um array de animais
let animais: [Animal] = [animalGenerico, meuCachorro, meuGato]

//Iterando sobre o array e chamando o metodo fazerSom
for animal in animais {
    animal.fazerSom()
    print(animal.getNome())
}

/*
Imprime:
Som genérico de animal
Animal Generico
Au Au!
Rex
Miau!
Snow
*/