import Foundation

struct Todo: Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}

let json = """
{
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
}
"""

let jsonData = json.data(using: .utf8)!

do {
    let todo = try JSONDecoder().decode(Todo.self, from: jsonData)

    print("User ID: \(todo.userId)")
    print("ID: \(todo.id)")
    print("Title: \(todo.title)")
    print("Completed: \(todo.completed)")
} catch {
    print("Failed to decode JSON: \(error)")
}

// Codable allows Swift to convert between Swift types and external data formats such as JSON.
// It is actually a combination of:
// Encodable
// +
// Decodable
// =
// Codable
// For this task we are using Decodable, because we are taking JSON → Swift.