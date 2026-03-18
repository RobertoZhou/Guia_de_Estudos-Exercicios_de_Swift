// Escreva um código que receba uma nota (A, B, C, D, F) e imprima uma mensagem
// correspondente ao conceito.
// Objetivo: Trabalhar com a estrutura switch case.

let nota = "A"

switch nota {
    case "A":
        print("APROVADO!")
    case "B":
        print("APROVADO!")
    case "C":
        print("APROVADO NA MÉDIA!")
    case "D":
        print("RECUPERAÇÃO!")
    case "F":
        print("RECUPERAÇÃO")
    default:
        print("REPROVADO!")
}