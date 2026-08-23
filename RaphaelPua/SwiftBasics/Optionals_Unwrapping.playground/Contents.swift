import Foundation

// MARK: - Optionals

// An optional can contain a value or nil.
var username: String? = "Raphael"
var email: String? = nil

print("Username: \(username as Any)")
print("Email: \(email as Any)")


// MARK: - if let

// if let safely unwraps an optional if it contains a value.
if let username = username {
    print("Username is: \(username)")
} else {
    print("No username was provided.")
}

if let email = email {
    print("Email is: \(email)")
} else {
    print("No email was provided.")
}


// MARK: - guard let

func displayUsername(_ username: String?) {
    guard let username = username else {
        print("Username is missing.")
        return
    }

    print("Welcome, \(username)!")
}

displayUsername(username)
displayUsername(nil)


// MARK: - Chaining with if let

let firstName: String? = "Raphael"
let middleName: String? = nil
let lastName: String? = "Pua"

if let firstName = firstName,
   let lastName = lastName {
    if let middleName = middleName {
        print("Full name: \(firstName) \(middleName) \(lastName)")
    } else {
        print("Full name: \(firstName) \(lastName)")
    }
} else {
    print("First or last name may be missing")
}

// MARK: - Chaining with guard let

func createUserProfile(
    firstName: String?,
    middleName: String?,
    lastName: String?,
    email: String?
) {
    guard let firstName = firstName,
          let middleName = middleName,
          let lastName = lastName,
          let email = email else {
        print("Unable to create profile because information is missing.")
        return
    }

    print("User Profile")
    print("Name: \(firstName) \(middleName) \(lastName)")
    print("Email: \(email)")
}

createUserProfile(
    firstName: "Raphael",
    middleName: "Lou",
    lastName: "Pua",
    email: "raphael@example.com"
)

createUserProfile(
    firstName: "Raphael",
    middleName: nil,
    lastName: nil,
    email: "raphael@example.com"
)
