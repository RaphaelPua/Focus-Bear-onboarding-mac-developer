# HTTP Methods — POST Request

## What is an HTTP Method?

An **HTTP method** tells the server what we want to do with a resource.

For example:

```text
GET    → Retrieve data
POST   → Send/create data
PUT    → Replace/update data
PATCH  → Partially update data
DELETE → Delete data
```

---

## POST

A **POST request** is commonly used to **send data to a server**, often to create a new resource.

In Swift:

```swift
request.httpMethod = "POST"
```

This tells `URLSession`:

> Send this request using the HTTP `POST` method.

### Example

```swift
var request = URLRequest(url: url)

request.httpMethod = "POST"
```

The request is then sent to the server:

```text
Your App
   │
   │ POST
   │ + Data
   ▼
Server
   │
   ▼
Creates/Processes the data
```

---

## POST vs GET

| Method     | Purpose               | Example                   |
| ---------- | --------------------- | ------------------------- |
| **GET**    | Retrieve data         | Get a user's profile      |
| **POST**   | Send/create data      | Create a new user         |
| **PUT**    | Replace existing data | Replace a user's profile  |
| **PATCH**  | Partially update data | Change only a user's name |
| **DELETE** | Remove data           | Delete a user             |

### Key takeaway

> **`request.httpMethod = "POST"` specifies that the HTTP request should use the POST method, which is commonly used to send data to a server or create a new resource.**
