// Exercício: Crie uma struct chamada ResultadoOperacao<T, E> que
// represente o resultado de uma operação que pode ser bem-sucedida (com
// um valor do tipo T) ou falhar (com um erro do tipo E).
// • A struct deve ter duas propriedades: sucesso (um Optional<T>)
// e erro (um Optional<E>). Apenas uma dessas propriedades deve ter
// valor (nunca ambas).
// • Crie uma função genérica que receba um array de strings e tente
// converter cada string em um inteiro. Retorne um array
// de ResultadoOperacao<Int, String> indicando o resultado de cada
// conversão.

struct ResultadoOperacao<T, E> {
    var sucesso: T?
    var erro: E?

    // Inicializador para sucesso
    init(sucesso: T) {
        self.sucesso = sucesso
        self.erro = nil
    }

    // Inicializador para erro
    init(erro: E) {
        self.sucesso = nil
        self.erro = erro
    }
}

func converterParaInt(array: [String]) -> [ResultadoOperacao<Int, String>] {
    var resultados: [ResultadoOperacao<Int, String>] = []

    for item in array {
        if let numero = Int(item) {
            resultados.append(ResultadoOperacao(sucesso: numero))
        } else {
            resultados.append(ResultadoOperacao(erro: "Não foi possível converter '\(item)'"))
        }
    }

    return resultados
}

// Teste
let valores = ["10", "20", "abc", "30"]
let resultados = converterParaInt(array: valores)

for resultado in resultados {
    if let valor = resultado.sucesso {
        print("Sucesso: \(valor)")
    } else if let erro = resultado.erro {
        print("Erro: \(erro)")
    }
}