// Exibe uma lista de opções
func mostrarOpcao(_ opcao: [String]){
    for (num, item) in opcao.enumerated(){
        print("[ \(num + 1) ] - \(item)")
    }
}

// Estruturação de dados
struct Livro {
    var titulo: String
    var autor: String
    var anoPublicacao: Int
    var disponibilidade: Bool
}

// Lista de livros
var livros: [Livro] = []

// Função para adicionar livro
func adicionarLivro(_ titulo: String, _ autor: String, _ ano: Int){
    let livro = Livro(titulo: titulo, autor: autor, anoPublicacao: ano, disponibilidade: true)
    livros.append(livro)
}

while true {
    print("===== MENU =====")
    
    mostrarOpcao([
        "Adicionar novo Livro",
        "Visualizar Livros Cadastrados",
        "Visualizar Status do Livro"
    ])
    
    print("Selecione sua opção:")
    let opcao = readLine()
    
    switch opcao {
        case "1":
            print("===== ADICIONAR LIVRO =====")
        
            print("Título:")
            let titulo = readLine() ?? ""
        
            print("Autor:")
            let autor = readLine() ?? ""
        
            print("Ano de publicação:")
            let ano = Int(readLine() ?? "") ?? 0
        
            adicionarLivro(titulo, autor, ano)
        
            print("Livro adicionado com sucesso!")
        
        case "2":
            print("===== LIVROS CADASTRADOS =====")
            
            for livro in livros {
                print("Título: \(livro.titulo) - Autor: \(livro.autor) - Ano de Públicação: \(livro.anoPublicacao)")
            }
        
        default:
            print("Opção inválida")
    }
}