// Type Constraints

func descricao<T: CustomStringConvertible>(item: T) -> String {
    return item.description
}

struct Produto: CustomStringConvertible {
    var nome: String
    var preco: Double

    var description: String {
        return "\(nome) - R$ \(preco)"
    }
}

let produto = Produto(nome: "Camiseta", preco: 29.99)
print(descricao(item: produto)) // Saída: Camiseta - R$ 29.99