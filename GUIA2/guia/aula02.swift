// Métodos: Funções dentro de uma classe.
// init: Construtor para inicializar objetos.
// deinit: Chamado quando um objeto é desalocado da memória.

class Computador {
    // Propriedades
    var marca: String
    var modelo: String
    var anoFabricacao: Int
    var sistemaOperacional: String
    var ligado: Bool

    // Inicializador Designado (Designated Initializer)
    // Este é o principal inicializador da classe. Garante que todas
    as propriedades não opcionais
    // sejam inicializadas.
    init(marca: String, modelo: String, anoFabricacao: Int,
         sistemaOperacional: String) {
        self.marca = marca
        self.modelo = modelo
        self.anoFabricacao = anoFabricacao
        self.sistemaOperacional = sistemaOperacional
        self.ligado = false // Valor padrão
        print("Computador \(marca) \(modelo) criado!")
    }

    // Inicializador de Conveniência (Convenience Initializer)
    // Fornece um caminho alternativo para inicializar um objeto.
    Deve, em última instância,
    // chamar um inicializador designado.
    convenience init(marca: String, modelo: String) {
        // Chama o inicializador designado com valores padrão para
        anoFabricacao e sistemaOperacional
        self.init(marca: marca, modelo: modelo, anoFabricacao: 2023,
                  sistemaOperacional: "Sistema Desconhecido")
        print("Inicialização rápida do computador \(marca) \(modelo)")
    }

    // Método para ligar o computador
    func ligar() {
        if !ligado {
            ligado = true
            print("\(marca) \(modelo) ligado.")
        } else {
            print("\(marca) \(modelo) já está ligado.")
        }
    }

    // Método para desligar o computador
    func desligar() {
        if ligado {
            ligado = false
            print("\(marca) \(modelo) desligado.")
        } else {
            print("\(marca) \(modelo) já está desligado.")
        }
    }

    // Desinicializador (Deinitializer)
    // É chamado automaticamente quando uma instância da classe é
    desalocada da memória.
    deinit {
        print("Computador \(marca) \(modelo) sendo destruído.")
    }
}

// Exemplo de uso

// Usando o Inicializador Designado
var meuComputador = Computador(marca: "Apple", modelo: "MacBook Pro",
                               anoFabricacao: 2022, sistemaOperacional: "macOS")
meuComputador.ligar()
meuComputador.desligar()

// Usando o Inicializador de Conveniência
var computadorSimples = Computador(marca: "Dell", modelo: "Inspiron")
computadorSimples.ligar()

// O deinit será chamado quando as instâncias 'meuComputador' e
// 'computadorSimples' forem desalocadas.