// Uso para Modelar Estados:

enum StatusTarefa {
    case pendente
    case emAndamento(progresso: Double) // Valor associado para o progresso
    case concluida
    case falha(erro: String)
}

var minhaTarefa = StatusTarefa.pendente

minhaTarefa = .emAndamento(progresso: 0.5)

minhaTarefa = .concluida