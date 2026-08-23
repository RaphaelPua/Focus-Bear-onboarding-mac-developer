import Foundation

// MARK: - Generic Function

func printValue<T>( value: T) {
    print("Value: \(value)")
}

printValue(value:"Raphael")
printValue(value: 25)
printValue(value: true)


// MARK: - Generic Function with Two Values

func areEqual<T: Equatable>(first: T, second: T) -> Bool {
    return first == second
}

print(areEqual(first: 10, second: 10))
print(areEqual(first: "Swift", second: "Swift"))
print(areEqual(first: true, second: false))

// MARK: - Generic Type

struct Box<T> {
    var value: T

    func display() {
        print("Box contains: \(value)")
    }
}

let stringBox = Box(value: "Hello Swift")
let numberBox = Box(value: 42)

stringBox.display()
numberBox.display()