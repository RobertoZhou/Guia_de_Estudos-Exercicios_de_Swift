// Tipos Genéricos

struct Fila<T> {
    var itens: [T] = []

    mutating func adicionar(item: T) {
        itens.append(item)
    }

    mutating func remover() -> T? {
        if !itens.isEmpty {
            return itens.removeFirst()
        } else {
            return nil
        }
    }
}

var filaNumeros = Fila<Int>()
filaNumeros.adicionar(item: 10)
filaNumeros.adicionar(item: 20)

print(filaNumeros.remover()!) // Saída: 10