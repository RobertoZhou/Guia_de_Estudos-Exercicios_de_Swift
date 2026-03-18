// Structs são tipos personalizados em Swift que permitem agrupar dados de diferentes
// tipos. Elas são muito úteis quando você deseja criar modelos de dados complexos.
// • struct: Palavra-chave para definir uma struct.
// • Propriedades e métodos: Uma struct pode conter propriedades e métodos.


struct Person {
    var name: String
    var age: Int
    var isStudent: Bool
}

let person = Person(name: "John", age: 25, isStudent: true)
print(person.name) // John
print(person.age) // 25
print(person.isStudent) // true