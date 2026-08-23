import Foundation

// MARK: - Protocol

protocol Describable {
    var name: String { get }

    func describe()
}


// MARK: - Default Implementation

extension Describable {
    func describe() {
        print("This is \(name).")
    }
}


// MARK: - Struct Conforming to Protocol

struct Developer: Describable {
    let name: String
}

let developer = Developer(name: "Raphael Pua")

developer.describe()

// MARK: - Another Type Conforming to Protocol

struct Project: Describable {
    let name: String
}

let project = Project(name: "Focus Bear")

project.describe()