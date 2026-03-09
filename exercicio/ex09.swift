// Crie uma tupla que represente um produto, contendo nome, preço e quantidade em
// estoque. Imprima os dados do produto.
// Objetivo: Trabalhar com tuplas

let produto = ("Produto1", 15.90, 80)

// Solução 1
print("Produto: \(produto.0)")
print("Preço: \(produto.1)")
print("Quantidade: \(produto.2)")

// Solução 2
let (nome, preco, quantidade) = produto
print(nome)
print(preco)
print(quantidade)
