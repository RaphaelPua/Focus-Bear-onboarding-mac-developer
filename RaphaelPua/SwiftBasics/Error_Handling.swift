import Foundation

// MARK: - Custom Errors

enum LoginError: Error {
    case emptyUsername
    case incorrectPassword
    case wrongUsername
}

// MARK: - Login Function

func login(username: String, password: String) throws {
    
    if username.isEmpty {
        throw LoginError.emptyUsername
    }
    
    if password != "password123" {
        throw LoginError.incorrectPassword
    }

    if username != "Raphael" {
        throw LoginError.wrongUsername
    }
    
    print("Login successful!")
}

// MARK: - Try / Catch

do {
    try login(
        username: "Raphael",
        password: "password123"
    )
} catch LoginError.emptyUsername {
    print("Error: Username cannot be empty.")
} catch LoginError.incorrectPassword {
    print("Error: Incorrect password.")
} catch LoginError.wrongUsername {
    print("Error: Wrong username.")
} catch {
    print("An unexpected error occurred.")
}