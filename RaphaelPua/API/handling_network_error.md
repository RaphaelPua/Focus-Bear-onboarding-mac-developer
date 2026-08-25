# Networking Error Handling

## 🎯 Goal

Learn how to handle errors that can happen when making network requests.

Network requests **can fail**, so an app should handle errors instead of assuming every request succeeds.

---

## 1. Common Networking Errors

| Error                     | Meaning                                                 |
| ------------------------- | ------------------------------------------------------- |
| `.timedOut`               | The server took too long to respond                     |
| `.notConnectedToInternet` | There is no internet connection                         |
| `.cannotFindHost`         | The hostname/server could not be found                  |
| `.networkConnectionLost`  | The network connection was lost                         |
| Decoding error            | The received JSON doesn't match the expected Swift type |

---

## 2. Handling Network Errors

`URLSession` can return an `Error` when something goes wrong.

```swift
let task = URLSession.shared.dataTask(with: request) { data, response, error in

    if let error = error {
        print("Network error: \(error)")
    }
}
```

### What is happening?

```text
URLSession
    ↓
Makes request
    ↓
Request succeeds? ── Yes → Process data
    │
    No
    ↓
error
    ↓
Handle the error
```

---

## 3. `URLError`

Swift provides `URLError` for many common networking problems.

We can check whether the error is a `URLError`:

```swift
if let urlError = error as? URLError {
    // Handle URL error
}
```

The `as?` means:

> Try to convert this error into a `URLError`. If it isn't one, return `nil`.

---

## 4. Checking the Specific Error

We can use `switch` to determine what went wrong:

```swift
switch urlError.code {
case .timedOut:
    print("The request timed out.")

case .notConnectedToInternet:
    print("No internet connection.")

case .cannotFindHost:
    print("Could not find the server.")

default:
    print("Network error: \(urlError.localizedDescription)")
}
```

This allows us to give the user/developer a **more specific explanation**.

Instead of:

```text
Network error
```

we can say:

```text
The request timed out.
```

---

## 5. Timeout Errors

A timeout occurs when a request takes too long.

You can set the timeout using:

```swift
request.timeoutInterval = 5
```

This means the request can wait approximately **5 seconds** before timing out.

For testing, you can use an extremely short timeout:

```swift
request.timeoutInterval = 0.001
```

This makes it much more likely that you'll trigger a timeout error.

---

## 6. JSON Decoding Errors

Networking isn't only about connecting to the server.

The server might return JSON that doesn't match what your Swift code expects.

For example:

### Swift expects

```swift
struct User: Codable {
    let id: Int
    let name: String
}
```

### But the JSON contains

```json
{
    "id": "not a number",
    "name": "Raphael"
}
```

The problem is:

```text
Swift expects: Int
JSON provides: String
```

Therefore, decoding fails.

---

## 7. Handling Decoding Errors

Use `do/catch`:

```swift
do {
    let user = try JSONDecoder().decode(User.self, from: data)
    print(user)
} catch {
    print("Decoding error: \(error)")
}
```

### Flow

```text
JSON Data
    ↓
JSONDecoder
    ↓
Matches Swift struct?
   / \
 Yes  No
 ↓     ↓
Object  Error
        ↓
      catch
```

---

## 8. `do`, `try`, and `catch`

### `do`

Contains code that might produce an error:

```swift
do {
    // Code that can fail
}
```

### `try`

Used when calling a function that can throw an error:

```swift
try JSONDecoder().decode(...)
```

### `catch`

Handles the error:

```swift
catch {
    print("Something went wrong: \(error)")
}
```

Think of it as:

```text
do
 ↓
try something
 ↓
Did it fail?
 ↓
catch the error
```

---

## 9. Why Error Handling Matters

Without error handling:

```text
Network fails
     ↓
App doesn't know what happened
     ↓
Poor user experience
```

With error handling:

```text
Network fails
     ↓
Identify the error
     ↓
Handle it appropriately
     ↓
Give useful feedback
```

For example:

```text
No internet
    ↓
"Please check your internet connection."

Timeout
    ↓
"The server took too long to respond."

Invalid JSON
    ↓
"Unable to process server response."
```

---

## 10. Key Concepts to Remember

### `Error`

Represents something that went wrong.

```swift
error
```

### `URLError`

Represents common URL/networking errors.

```swift
URLError
```

### `urlError.code`

Identifies the specific networking problem.

```swift
urlError.code
```

### `do/catch`

Used to handle operations that can throw errors.

```swift
do {
    try something()
} catch {
    // Handle error
}
```

### `JSONDecoder`

Converts JSON data into Swift types.

```swift
JSONDecoder().decode(...)
```

---

## 📝 #9.5 Deliverable

The task asks for:

> **Timeout/decoding error examples**

So your project should demonstrate **both**:

### Timeout

```text
URLSession
   ↓
Request takes too long
   ↓
URLError.timedOut
   ↓
Handle error
```

### Decoding

```text
JSON
 ↓
JSONDecoder
 ↓
JSON doesn't match struct
 ↓
Decoding error
 ↓
catch
```

### ⭐ Main takeaway

> **Networking error handling allows an application to detect and respond to problems such as timeouts, connection failures, and invalid JSON instead of assuming every network request will succeed.**
