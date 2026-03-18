// Protocolos: Definem um conjunto de métodos e propriedades que uma classe ou
// struct deve implementar.
// Extensões: Permitem adicionar funcionalidades a tipos existentes sem modificar
// seu código original.

//MARK: - Protocolo

//Definindo um protocolo
protocol Desenhavel {
    //Propriedade que as classes que conformam com o protocolo devem
    implementar
    var area: Double { get }

    //Metodo que as classes que conformam com o protocolo devem
    implementar
    func desenhar()
}

//MARK: - Classes

//Classe que conforma com o protocolo Desenhavel
class Circulo: Desenhavel {
    var raio: Double

    init(raio: Double) {
        self.raio = raio
    }

    //Calculo da area do circulo
    var area: Double {
        return Double.pi * raio * raio
    }

    func desenhar() {
        print("Desenhando um círculo com raio \(raio)")
    }
}

//Classe que conforma com o protocolo Desenhavel
class Retangulo: Desenhavel {
    var largura: Double
    var altura: Double

    init(largura: Double, altura: Double) {
        self.largura = largura
        self.altura = altura
    }

    //Calculo da area do retangulo
    var area: Double {
        return largura * altura
    }

    func desenhar() {
        print("Desenhando um retângulo com largura \(largura) e altura
        \(altura)")
    }
}

//MARK: - Extensões

//Extensão para o protocolo Desenhavel
extension Desenhavel {
    //Metodo que todas as classes que conformam com o protocolo tem
    acesso
    func descrever() {
        print("Esta forma tem uma área de \(area)")
    }
}

//Extensão para a classe Circulo
extension Circulo {
    //Metodo especifico para a classe Circulo
    func aumentarRaio(percentual: Double) {
        raio *= (1 + percentual / 100)
        print("Raio aumentado para \(raio)")
    }
}

//MARK: - Execução

//Criando instancias das classes
let circulo = Circulo(raio: 5.0)
let retangulo = Retangulo(largura: 4.0, altura: 6.0)

//Chamando os metodos das classes
circulo.desenhar() // Imprime "Desenhando um círculo com raio 5.0"
retangulo.desenhar() // Imprime "Desenhando um retângulo com largura
4.0 e altura 6.0"

//Chamando o metodo da extensão do protocolo
circulo.descrever() // Imprime "Esta forma tem uma área de
78.53981633974483"
retangulo.descrever() // Imprime "Esta forma tem uma área de 24.0"

//Chamando o metodo da extensão da classe Circulo
circulo.aumentarRaio(percentual: 10.0) // Imprime "Raio aumentado para
5.5"