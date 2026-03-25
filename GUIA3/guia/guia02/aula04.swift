// Captura de Valores (Capture Lists):
class Contador {
    
    var count = 0
    
    lazy var incrementador: () -> Void = { [weak self] in
        guard let self = self else { return }
        
        self.count += 1
        print(self.count)
    }
    
    deinit {
        print("Contador desalocado")
    }
}

var contador = Contador()

contador.incrementador() // Imprime 1
contador.incrementador() // Imprime 2

contador = Contador() // Contador desalocado (se não houver retain cycles)