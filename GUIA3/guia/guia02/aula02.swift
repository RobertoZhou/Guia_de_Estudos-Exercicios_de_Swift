// Sintaxe Abreviada (Trailing Closures):
func fazerAlgo(completion: () -> Void) {
    // Código...
    completion()
}

fazerAlgo { // Trailing closure
    print("Tarefa concluída!")
}