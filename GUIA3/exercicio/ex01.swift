// Exercício: Crie um enum chamado TipoMidia que represente os tipos de
// mídia suportados em um aplicativo de streaming (música, vídeo,
// podcast). Para cada tipo, associe dados relevantes:
// • Música: título, artista, duração (em segundos).
// • Vídeo: título, duração (em segundos), resolução (enum
// Resolução: sd, hd, uhd).
// • Podcast: título, nome do host, número do episódio.
// • Crie uma função que receba um TipoMidia e imprima uma descrição
// formatada do conteúdo.

// Enum TipoMidia
enum Resolucao {
    case sd
    case hd
    case uhd
}

enum TipoMidia {
    case musica(titulo: String, artista: String, duracao: Int)
    case video(titulo: String, duracao: Int, resolucao: Resolucao)
    case podcast(titulo: String, host: String, episodio: Int)
}

// Função de descrição
func descreverMidia(_ midia: TipoMidia) {
    switch midia {
        
    case .musica(let titulo, let artista, let duracao):
        print("🎵 Música: \(titulo) - \(artista) (\(duracao)s)")
        
    case .video(let titulo, let duracao, let resolucao):
        print("🎬 Vídeo: \(titulo) (\(duracao)s) - \(resolucao)")
        
    case .podcast(let titulo, let host, let episodio):
        print("🎙️ Podcast: \(titulo) - Host: \(host) Ep.\(episodio)")
    }
}

// Exemplo de uso
let m1 = TipoMidia.musica(titulo: "Imagine", artista: "John Lennon", duracao: 183)

let v1 = TipoMidia.video(titulo: "Filme X", duracao: 7200, resolucao: .hd)

let p1 = TipoMidia.podcast(titulo: "TechCast", host: "João", episodio: 42)

descreverMidia(m1)
descreverMidia(v1)
descreverMidia(p1)