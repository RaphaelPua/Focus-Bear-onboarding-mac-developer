/*
 STRUCTS VS CLASSES NOTES

 Structs:
 - Value types
 - Copies are created when assigned to another variable
 - Do not support inheritance
 - Generally preferred for simple data models
 - Commonly used in SwiftUI

 Classes:
 - Reference types
 - Multiple variables can reference the same object
 - Support inheritance
 - Can have deinitializers
 - Useful when shared state or identity is required
*/

import Foundation

// MARK: - Struct Example

struct UserStruct {
    var name: String
    var age: Int
}

var user1 = UserStruct(name: "Raphael", age: 25)
var user2 = user1

user2.name = "John"

print("Struct user 1: \(user1.name)")
print("Struct user 2: \(user2.name)")


// MARK: - Class Example

class UserClass {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let user3 = UserClass(name: "Raphael", age: 25)
let user4 = user3

user4.name = "John"

print("Class user 3: \(user3.name)")
print("Class user 4: \(user4.name)")

// Struct Example
// Structs are value types.
// Their properties can be constants (let) or variables (var).

struct Task {
    let title: String
    var isCompleted: Bool
}

var task = Task (
    title: "Completed onboarding process",
    isCompleted: false
)

task.isCompleted = true

print("Task completed: \(task.isCompleted)")

// Class Example

class UserSession {
    var username: String
    var isLoggedIn: Bool

    init(username: String) {
        self.username = username;
        self.isLoggedIn = false
    }

    func login() {
        isLoggedIn = true
    }

    func logout() {
        isLoggedIn = false
    }
}

let session = UserSession(username: "Raphael")

session.login()

print("User: \(session.username)")
print("Logged in: \(session.isLoggedIn)")