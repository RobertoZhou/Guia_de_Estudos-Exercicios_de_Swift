// Protocol Extensions (Implementações Padrão)

protocol Exibivel {
    func exibir() -> String
}

extension Exibivel {
    func exibir() -> String {
        return "Informação não disponível"
    }
}

struct Produto: Exibivel {
    var nome: String
}

let produto = Produto(nome: "Livro")
print(produto.exibir()) // Saída: Livro