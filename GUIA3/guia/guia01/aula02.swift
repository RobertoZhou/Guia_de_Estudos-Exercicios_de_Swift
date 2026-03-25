// Enums com Raw Values (Valores Brutos):

enum StatusHTTP: Int {
    case ok = 200
    case notFound = 404
    case internalServerError = 500
}
let status = StatusHTTP.ok
print(status.rawValue) // Saída: 200