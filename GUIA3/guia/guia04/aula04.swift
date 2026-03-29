// Associated Types em Protocolos

protocol Container {
    associatedtype Item

    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

struct ArrayInt: Container {
    typealias Item = Int
    var itens: [Int] = []

    mutating func append(_ item: Item) {
        itens.append(item)
    }

    var count: Int {
        return itens.count
    }

    subscript(i: Int) -> Item {
        return itens[i]
    }
}