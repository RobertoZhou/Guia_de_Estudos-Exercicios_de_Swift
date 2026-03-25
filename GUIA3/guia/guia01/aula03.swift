// Enums com Valores Associados:

enum Resultado<T> {
    case sucesso(T)
    case falha(Error)
}

enum ErroRede: Error {
    case conexao
    case timeout
    case respostaInvalida
}

func fetchData() -> Resultado<String> {
    // Simulando uma operação de rede...
    let deuCerto = false // Simule um resultado aleatório
    
    if deuCerto {
        return .sucesso("Dados obtidos com sucesso!")
    } else {
        return .falha(ErroRede.conexao)
    }
}

let resultado = fetchData()

switch resultado {
case .sucesso(let data):
    print("Sucesso: \(data)")
    
case .falha(let erro):
    print("Falha: \(erro)")
}