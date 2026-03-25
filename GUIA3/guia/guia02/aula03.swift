// Closures como Parâmetros (Callbacks):
func baixarImagem(url: String, completion: @escaping (UIImage?) -> Void) {
    
    // Simulando uma operação assíncrona
    DispatchQueue.global().async {
        
        Thread.sleep(forTimeInterval: 1.0) // Simulando um atraso
        
        let imagem = UIImage(named: "imagem")
        
        DispatchQueue.main.async {
            completion(imagem)
        }
    }
}

baixarImagem(url: "url_da_imagem") { (imagem) in
    
    if let imagem = imagem {
        // Exibir a imagem na interface do usuário
        print("Imagem baixada com sucesso!")
    } else {
        print("Falha ao baixar a imagem.")
    }
}