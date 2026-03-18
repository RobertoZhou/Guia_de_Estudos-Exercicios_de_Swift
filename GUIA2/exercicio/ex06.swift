// Crie uma struct chamada Ponto com propriedades x e y. Compare o comportamento
// de cópia de struct e class em Swift.

struct Ponto {
    var x: Int
    var y: Int
}

var p1 = Ponto(x: 10, y: 20)
var p2 = p1 // cópia

p2.x = 30

print(p1.x) // 10 (não muda)
print(p2.x) // 30



class PontoClasse {
    var x: Int
    var y: Int

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

var p3 = PontoClasse(x: 10, y: 20)
var p4 = p3 // referência

p4.x = 30

print(p3.x) // 30 (mudou!)
print(p4.x) // 30