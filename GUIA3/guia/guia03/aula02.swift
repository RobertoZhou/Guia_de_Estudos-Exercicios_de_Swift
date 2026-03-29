// Type Properties (Propriedades Estáticas)

struct Configuracao {
    static var versaoApp = "1.0" // Compartilhada por todas as instâncias
    var nomeUsuario: String

    func exibirVersao() {
        print("Versão do app: \(Configuracao.versaoApp)")
    }
}

let config1 = Configuracao(nomeUsuario: "João")
config1.exibirVersao() // Versão do app: 1.0