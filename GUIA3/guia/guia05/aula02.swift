// Protocol-Oriented Programming

protocol Movivel {
    mutating func mover(x: Int, y: Int)
}

struct Ponto: Movivel {
    var x: Int
    var y: Int

    mutating func mover(x: Int, y: Int) {
        self.x += x
        self.y += y
    }
}