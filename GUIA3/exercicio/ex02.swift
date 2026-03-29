// Exercício: Crie uma função chamada filtrarArray que receba um array de
// inteiros e um closure como parâmetros. O closure deve receber um
// inteiro e retornar um booleano (indicando se o elemento deve ser
// incluído no resultado). A função filtrarArray deve retornar um novo
// array contendo apenas os elementos que o closure indicou como "true".
// • Use trailing closure syntax para chamar a função.
// • Crie uma versão que utilize capture lists para evitar memory
// leaks

// Função filtrarArray
func filtrarArray(_ array: [Int], criterio: (Int) -> Bool) -> [Int] {
    
    var resultado: [Int] = []
    
    for numero in array {
        if criterio(numero) {
            resultado.append(numero)
        }
    }
    
    return resultado
}

// Uso com Trailing Closure
let numeros = [1, 2, 3, 4, 5, 6]

// Filtrar pares
let pares = filtrarArray(numeros) { numero in
    return numero % 2 == 0
}

print(pares) // [2, 4, 6]

let pares = filtrarArray(numeros) { $0 % 2 == 0 }


// Versão com Capture List
func filtrarComCapture(_ array: [Int]) -> [Int] {
    
    var limite = 3
    
    return filtrarArray(array) { [limite] numero in
        return numero > limite
    }
}