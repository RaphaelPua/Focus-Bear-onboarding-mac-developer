# Unit Tests — Notes

## 🎯 Goal

Learn how to create **unit tests in an Xcode project** and verify that individual pieces of code work correctly.

### What is a unit test?

* A **unit test** checks a small, individual piece of code, such as a function or method.
* It checks whether the code produces the **expected result**.
* Unit tests help catch bugs and prevent existing functionality from breaking after changes.

### XCTest

* **XCTest** is Apple's framework for writing and running tests in Xcode.
* Tests are usually placed in a separate **test target**.
* `XCTestCase` is used to create a group of XCTest test methods.

### Basic structure

```swift
import XCTest
@testable import UnitTester

final class UnitTesterTests: XCTestCase {

    func testAddition() {
        XCTAssertEqual(addNumbers(a: 2, b: 3), 5)
    }
}
```

### Important components

* `import XCTest` → gives access to XCTest functionality.
* `@testable import UnitTester` → allows the test target to access the app's internal code.
* `XCTestCase` → base class for XCTest test cases.
* `func test...()` → test methods should begin with `test`.
* `XCTAssertEqual()` → checks whether two values are equal.

### Arrange → Act → Assert

A common structure for unit tests is:

1. **Arrange** – Set up the data or objects needed.
2. **Act** – Run the function/method being tested.
3. **Assert** – Check that the result is what you expected.