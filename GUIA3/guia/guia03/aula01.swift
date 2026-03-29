// Lazy Properties (Inicialização Tardia)

class Calculadora {
    lazy var resultadoComplexo: Double = {
        // Cálculos complexos que só são feitos quando a propriedade é acessada
        print("Calculando...")
        return Double.pi * 2
    }()
}

let calc = Calculadora()
print(calc.resultadoComplexo) // "Calculando..." e depois o valor