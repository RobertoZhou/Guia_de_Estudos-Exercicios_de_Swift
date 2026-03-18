// Classe: Um modelo que define atributos (propriedades) e comportamentos
// (métodos).
// Objeto: Uma instância de uma classe.
// Propriedades: Valores armazenados dentro de uma classe.
//  o get e set: Para obter e modificar valores.
//  o willSet e didSet: Observadores de propriedade.

class Pessoa {
    // Propriedades
    var nome: String
    var idade: Int
    private var _cpf: String // Propriedade privada para
    encapsulamento

    // Propriedade computada com get e set
    var cpf: String {
        get {
            return _cpf // Retorna o valor encapsulado
        }
        set {
            // Validação básica do CPF (apenas para exemplo)
            if newValue.count == 11 {
                _cpf = newValue
            } else {
                print("CPF inválido!")
            }
        }
    }

    // Propriedade com willSet e didSet
    var profissao: String {
        willSet {
            print("Vai mudar de \(profissao) para \(newValue)")
        }
        didSet {
            print("Mudou de \(oldValue) para \(profissao)")
        }
    }

    // Inicializador
    init(nome: String, idade: Int, cpf: String, profissao: String) {
        self.nome = nome
        self.idade = idade
        self._cpf = cpf // Inicializa a propriedade privada
        self.profissao = profissao
    }

    // Método
    func apresentar() {
        print("Olá, meu nome é \(nome), tenho \(idade) anos e sou
        \(profissao).")
    }
}

// Criando uma instância da classe Pessoa
let pessoa1 = Pessoa(nome: "João", idade: 30, cpf: "12345678900",
profissao: "Engenheiro")

// Acessando propriedades
print(pessoa1.nome) // Imprime "João"

// Usando o método apresentar
pessoa1.apresentar() // Imprime "Olá, meu nome é João, tenho 30 anos e
sou Engenheiro."

// Usando o get e set da propriedade computada cpf
pessoa1.cpf = "00000000000"
print(pessoa1.cpf) // Imprime "00000000000"

// Usando willSet e didSet da propriedade profissao
pessoa1.profissao = "Professor"
// Imprime:
// Vai mudar de Engenheiro para Professor
// Mudou de Engenheiro para Professor