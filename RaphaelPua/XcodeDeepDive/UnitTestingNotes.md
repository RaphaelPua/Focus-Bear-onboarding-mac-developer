# Unit Tests — Notes

## 🎯 Goal

Learn how to create **unit tests in an Xcode project** and verify that individual pieces of code work correctly.

### What is a unit test?

* A **unit test** checks a small, individual piece of code, such as a function or method.
* It checks whether the code produces the **expected result**.
* Unit tests help catch bugs and prevent existing functionality from breaking after changes. ([Apple Developer][1])

### XCTest

* **XCTest** is Apple's framework for writing and running tests in Xcode.
* Tests are usually placed in a separate **test target**.
* `XCTestCase` is used to create a group of XCTest test methods. ([Apple Developer][1])

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
* `XCTAssertEqual()` → checks whether two values are equal. ([Apple Developer][2])

### Arrange → Act → Assert

A common structure for unit tests is:

1. **Arrange** – Set up the data or objects needed.
2. **Act** – Run the function/method being tested.
3. **Assert** – Check that the result is what you expected. ([Apple Developer][2])

### My Issue #23 requirements

The issue only requires:

> **Project with at least 3 tests**

So I need:

* [ ] Xcode project
* [ ] Unit testing target
* [ ] Code/function to test
* [ ] At least **3 unit tests**
* [ ] All 3 tests pass
* [ ] Commit and push the project to GitHub

### Example tests

```swift
func testAddition() {
    XCTAssertEqual(addNumbers(a: 2, b: 3), 5)
}

func testAdditionWithZero() {
    XCTAssertEqual(addNumbers(a: 5, b: 0), 5)
}

func testAdditionWithNegativeNumber() {
    XCTAssertEqual(addNumbers(a: -2, b: 3), 1)
}
```

**Key takeaway:** For this task, I don't need a complicated application. I just need to demonstrate that I can create an Xcode project, write **at least 3 unit tests**, run them successfully, and commit the working project.

[1]: https://developer.apple.com/documentation/xctest/?utm_source=chatgpt.com "XCTest | Apple Developer Documentation"
[2]: https://developer.apple.com/documentation/xcode/adding-tests-to-your-xcode-project?utm_source=chatgpt.com "Adding tests to your Xcode project | Apple Developer Documentation"
