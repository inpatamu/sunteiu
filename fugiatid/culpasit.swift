struct Person: Codable {
    let name: String
    let age: Int
}

let person = Person(name: "John", age: 25)

// Encoding the person object using key paths
let encoder = JSONEncoder()
encoder.keyEncodingStrategy = .convertToSnakeCase

do {
    let jsonData = try encoder.encode(person)
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)   // Output: {"name":"John","age":25}
    }
} catch {
    print(error)
}

// Decoding JSON data into a person object using key paths
let json = """
    {"name":"Jane","age":30}
"""

let decoder = JSONDecoder()

do {
    let jsonData = Data(json.utf8)
    let decodedPerson = try decoder.decode(Person.self, from: jsonData)
    print(decodedPerson)   // Output: Person(name: "Jane", age: 30)
} catch {
    print(error)
}
