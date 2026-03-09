// Exibe uma lista de opções
func mostrarOpcao(_ opcao: [String]){
    for (num, item) in opcao.enumerated(){
        print("[ \(num + 1) ] - \(item)")
    }
}
print("=====" + " MENU " + "=====")
mostrarOpcao(["Adicionar novo Livro.", "Visualizar Livros Cadastrados", "Visualizar Status do Livro"])

print("Selecione sua opção:")
let opcao = readLine() 

switch opcao {
    case "1":
        print("1")
    case "2":
        print("2")
    default:
        print("Opção inválida")
}
