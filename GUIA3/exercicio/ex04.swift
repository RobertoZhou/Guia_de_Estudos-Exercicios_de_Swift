// • Defina um protocolo chamado Desenhavel que exige que as classes
// conformantes implementem uma propriedade area (Double) e um
// método desenhar().
// • Crie structs chamadas Circulo e Retangulo que implementem o
// protocolo Desenhavel.
// • Crie uma extension para o protocolo Desenhavel que adicione um
// método padrão imprimirDescricao() que imprima uma descrição
// formatada da forma (área e tipo).
// • Protocol-Oriented Programming: crie uma função que receba um
// array de objetos Desenhavel e chame o método desenhar() de cada
// objeto.


protocol Desenhavel {
    var area: Double { get }
    func desenhar()
}

extension Desenhavel {
    func imprimirDescricao() {
        let tipo = String(describing: Self.self)
        print("Tipo: \(tipo) | Área: \(area)")
    }
}

struct Circulo: Desenhavel {
    var raio: Double

    var area: Double {
        return Double.pi * raio * raio
    }

    func desenhar() {
        print("Desenhando um círculo")
    }
}

struct Retangulo: Desenhavel {
    var largura: Double
    var altura: Double

    var area: Double {
        return largura * altura
    }

    func desenhar() {
        print("Desenhando um retângulo")
    }
}

// Função Protocol-Oriented
func desenharTodos(_ objetos: [Desenhavel]) {
    for objeto in objetos {
        objeto.desenhar()
        objeto.imprimirDescricao()
    }
}

// Teste
let formas: [Desenhavel] = [
    Circulo(raio: 2.0),
    Retangulo(largura: 3.0, altura: 4.0)
]

desenharTodos(formas)