// Crie uma variável optional que armazene um nome. Se o nome não for nil, imprima na
// tela. Caso contrário, imprima uma mensagem dizendo que o nome não está definido.
// Tente trabalhar tanto com o if let como com o guard
// Objetivo: Trabalhar com optionals e desempacotamento seguro (if let).

var nome: String? = "Alice"


// Usando if let para desempacotar e acessar o valor

if let nomeDesempacotado = nome {
    print("O nome é \(nomeDesempacotado) - if let")
} else {
    print("Nome não está definido - if let")
}


// Usando guard let para desempacotar e acessar o valor(funciona somente dentro de função)

func mostrarNome(_ nome:String?) {
    // Usando guard let para desempacotar e acessar o valor
    guard let nomeDesempacotado = nome else {
        print("Nome não definido - guard let")
        return
    }

    print("O nome é \(nomeDesempacotado) - guard let")
}

mostrarNome("Barnette")

