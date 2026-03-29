// Funções Genéricas

func imprimir<T>(array: [T]) {
    for elemento in array {
        print(elemento)
    }
}

let numeros = [1, 2, 3]
let nomes = ["Alice", "Bob", "Carlos"]

imprimir(array: numeros)
imprimir(array: nomes)