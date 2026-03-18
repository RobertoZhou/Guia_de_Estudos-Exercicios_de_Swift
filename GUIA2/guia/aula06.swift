// Structs: São tipos de valor que permitem agrupar dados relacionados
// (propriedades). São ideais para representar valores simples e imutáveis.
// Classes: São tipos de referência que também permitem agrupar dados
// (propriedades) e comportamento (métodos). Classes são mais adequadas para
// modelar objetos complexos com identidade e estado mutável.


// Tipo Valor vs. Tipo Referência:
// o Structs (Tipo Valor): Ao atribuir uma struct a uma nova variável, uma
// cópia dos dados é criada. Modificações na cópia não afetam a struct
// original

struct PointStruct {
    var x: Int
    var y: Int
}
var point1 = PointStruct(x: 10, y: 20)
var point2 = point1 // Cria uma cópia de point1
point2.x = 30 // Modifica a cópia (point2)
print(point1.x) // Imprime 10 (point1 não foi alterado)


// Classes (Tipo Referência): Ao atribuir uma classe a uma nova variável,
// uma nova referência ao mesmo objeto é criada. Modificações feitas
// através de uma referência afetam todas as outras referências ao mesmo
// objeto.

class PointClass {
    var x: Int
    var y: Int
init(x: Int, y: Int) {
    self.x = x
    self.y = y
    }
}
var point3 = PointClass(x: 10, y: 20)
var point4 = point3 // Cria uma referência para o mesmo objeto
point4.x = 30 // Modifica o objeto referenciado por point4
print(point3.x) // Imprime 30 (point3 foi alterado)

// Herança:
// o Structs: Não suportam herança. Você não pode criar uma struct que
// herde de outra struct.
// o Classes: Suportam herança. Isso permite criar hierarquias de classes,
// onde uma classe (subclasse) herda propriedades e métodos de outra
// classe (superclasse). A herança é um pilar da Programação Orientada a
// Objetos (OOP).

// Inicializadores:
// o Structs: Fornecem um inicializador membro a membro automático se
// você não definir um inicializador personalizado. Isso significa que você
// pode criar uma instância da struct passando valores para todas as suas
// propriedades diretamente no inicializador (como visto nos exemplos
// acima).
// o Classes: Requerem que você defina um inicializador personalizado
// (init) para garantir que todas as propriedades sejam inicializadas. Swift
// garante que todas as propriedades não opcionais em uma classe sejam
// inicializadas antes que a inicialização seja concluída.

// Gerenciamento de Memória:
// o Structs: A alocação e desalocação de memória são automáticas e
// gerenciadas pelo sistema. Não há necessidade de gerenciamento manual
// de memória.
// o Classes: Usam Automatic Reference Counting (ARC). O ARC rastreia o
// número de referências a um objeto na memória e desaloca o objeto
// quando não há mais referências a ele. Isso ajuda a evitar vazamentos de
// memória.

// Mutabilidade:
// o Structs: A mutabilidade é controlada pela declaração da struct. Se a
// struct for declarada com let, todas as suas propriedades serão imutáveis.
// Se declarada com var, as propriedades poderão ser mutáveis.
// o Classes: A mutabilidade é controlada individualmente nas propriedades
// com let (imutável) ou var (mutável).

// Identidade:
// o Structs: Não possuem identidade. Duas structs com os mesmos valores
// são consideradas iguais.
// o Classes: Possuem identidade. Duas instâncias de uma classe são
// diferentes, mesmo que tenham os mesmos valores nas suas propriedades.
// Quando Usar Structs vs. Classes:
// • Use structs quando:
// o Você precisa representar um valor, não uma entidade com identidade.
// o Você precisa de cópias independentes dos dados. A mutação de uma
// cópia não deve afetar as outras.
// o Você não precisa de herança.
// o Você está lidando com tipos de dados menores e simples. Structs
// geralmente têm melhor desempenho para dados menores porque são
// alocadas na stack (pilha).
// • Use classes quando:
// o Você precisa de herança para criar hierarquias de objetos.
// o Você precisa compartilhar e modificar um estado comum entre várias
// partes do seu programa. (Observe que isso pode levar a problemas de
// concorrência, então é necessário ter cuidado).
// o Você precisa de recursos como desalocação controlada de recursos
// (embora o ARC simplifique isso).
// o Você precisa de identidade. Se você precisa ser capaz de distinguir entre
// duas instâncias, mesmo que elas tenham os mesmos valores.
// o Você precisa de Objective-C interoperability. Classes podem herdar de
// classes Objective-C e implementar protocolos Objective-C.

// Em Resumo:
// Escolha structs por padrão para tipos de dados simples e orientados a valor. Use classes
// quando você precisar de herança, identidade ou gerenciamento complexo de estado.
// Entender essa distinção é crucial para escrever código Swift eficiente e bem estruturado.