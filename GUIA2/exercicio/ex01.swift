// Crie uma classe Carro com propriedades marca, modelo e ano. Adicione um
// observador willSet para imprimir quando ano for alterado.

class Carro {
    var marca: String
    var modelo: String
    
    var ano: Int {
        willSet {
            print("O ano vai mudar de \(ano) para \(newValue)")
        }
    }
    
    init(marca: String, modelo: String, ano: Int) {
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
    }
}