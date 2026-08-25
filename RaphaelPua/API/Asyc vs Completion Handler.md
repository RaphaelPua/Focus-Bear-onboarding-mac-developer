# 9.3 Async/Await Networking

## What is Async/Await?

**Async/await** is Swift's modern way of handling asynchronous operations, such as network requests.

It makes asynchronous code easier to read because it looks more like normal, sequential code.

---

## Why use Async/Await?

Network requests can take time because the app needs to wait for a server to respond.

Instead of blocking the application while waiting, `async/await` allows the operation to **pause and continue when the result is available**.

```text
App
 ↓
Send network request
 ↓
Wait for response
 ↓
Continue when response arrives
```

The app can remain responsive while waiting.

---

## `async`

Add `async` to a function when the function performs asynchronous work.

```swift
func fetchJSONAsync() async {
    // asynchronous work
}
```

This tells Swift:

> This function may need to pause while waiting for an operation to finish.

---

## `await`

Use `await` when calling an asynchronous function.

```swift
await fetchJSONAsync()
```

It means:

> Wait for the asynchronous operation to complete before continuing.

For example:

```swift
let (data, _) = try await URLSession.shared.data(from: url)
```

This waits for the network request to return.

---

## URLSession with Async/Await

Example:

```swift
import Foundation

func fetchJSONAsync() async {
    let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!

    do {
        let (data, _) = try await URLSession.shared.data(from: url)

        let json = try JSONSerialization.jsonObject(with: data)

        print(json)
    } catch {
        print("Error: \(error)")
    }
}
```

### How it works

```text
URL
 ↓
URLSession
 ↓
Network request
 ↓
await response
 ↓
Receive Data
 ↓
JSONSerialization
 ↓
Print JSON
```

---

## `Task`

You cannot normally call an `async` function directly from a regular button action.

Instead, use `Task`:

```swift
Button("Fetch JSON") {
    Task {
        await fetchJSONAsync()
    }
}
```

### Why use `Task`?

`Task` creates a context where asynchronous code can run.

```text
Button
 ↓
Task
 ↓
await fetchJSONAsync()
 ↓
Network request
```

---

## Error Handling

Network requests can fail, so we use:

```swift
do {
    // network request
} catch {
    print("Error: \(error)")
}
```

The `try` keyword is used because the network request can throw an error:

```swift
try await URLSession.shared.data(from: url)
```

## Completion Handler vs Async/Await

### Traditional approach

URLSession.shared.dataTask(with: url) { data, response, error in
    // Handle response
}.resume()


### Async/Await

- let (data, _) = try await URLSession.shared.data(from: url)
- Async/await is generally easier to read because the code follows a more straightforward sequence.

## Key Terms

| Term         | Meaning                                      |
| ------------ | -------------------------------------------- |
| `async`      | Marks a function as asynchronous             |
| `await`      | Waits for an asynchronous operation          |
| `Task`       | Provides a context for running async code    |
| `try`        | Handles an operation that can throw an error |
| `do/catch`   | Handles errors                               |
| `URLSession` | Apple's API for making network requests      |


### Key takeaway

> **Async/await makes asynchronous networking easier to write and understand by allowing code to wait for network operations without blocking the application.**