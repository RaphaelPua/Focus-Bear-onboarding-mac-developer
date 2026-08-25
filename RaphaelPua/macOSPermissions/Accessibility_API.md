# Accessibility APIs — Notes

### 🎯 Goal

Learn how macOS **Accessibility APIs (AX API)** allow an application to inspect and interact with UI elements from other applications.

The main deliverable is:

> **Code snippet interacting with AX API**

### What is the AX API?

The **Accessibility API** allows assistive technologies and authorised applications to interact with other apps' user interfaces.

It can be used to:

* Read UI element information
* Find buttons, text fields, windows, etc.
* Read an element's value
* Perform actions such as pressing a button
* Observe changes to UI elements

The main framework is:

```swift
import ApplicationServices
```

### Important concept: `AXUIElement`

`AXUIElement` represents an accessibility-enabled UI element.

For example:

```text
Application
    ↓
Window
    ↓
Button
    ↓
Text
```

Each of these can potentially be represented by an `AXUIElement`.

### Simple example

A basic example can get the accessibility element representing an application:

```swift
import ApplicationServices

let systemWideElement = AXUIElementCreateSystemWide()
```

`AXUIElementCreateSystemWide()` creates an accessibility element representing the system-wide accessibility object.

### Getting an attribute

You can use `AXUIElementCopyAttributeValue()` to retrieve information about an accessibility element.

For example:

```swift
import ApplicationServices

let systemWideElement = AXUIElementCreateSystemWide()

var value: CFTypeRef?

let result = AXUIElementCopyAttributeValue(
    systemWideElement,
    kAXFocusedUIElementAttribute as CFString,
    &value
)

if result == .success {
    print("Found focused UI element")
} else {
    print("Could not find focused UI element")
}
```

This attempts to find the **currently focused UI element**.

### Performing an action

The AX API can also perform actions on supported elements:

```swift
AXUIElementPerformAction(
    element,
    kAXPressAction as CFString
)
```

For example, an application could potentially press an accessible button.

### ⚠️ Accessibility permission

Applications generally need the user's permission to use Accessibility APIs to control other applications.

The user can manage this under:

**System Settings → Privacy & Security → Accessibility**

Your application needs to be authorised before it can interact with other applications through the AX API.

### Example workflow

```text
Your App
   ↓
AX API
   ↓
Other Application
   ↓
Find UI Element
   ↓
Read / interact with element
```

### Why is this useful?

Accessibility APIs are useful for:

* Assistive technologies
* Automation
* UI testing
* Productivity tools
* Screen readers
* Keyboard/mouse automation
* Applications that need to interact with other applications

### 📌 Key Takeaways

* **AX API** = macOS Accessibility API.
* Use `ApplicationServices`.
* `AXUIElement` represents an accessible UI element.
* `AXUIElementCopyAttributeValue()` can retrieve information.
* `AXUIElementPerformAction()` can perform supported actions.
* Accessibility access must be granted by the user.
* Only request accessibility access when your application genuinely needs it.

### Deliverable for #8.3

You only need to provide a **code snippet interacting with the AX API**.

A good minimal example is:

```swift
import ApplicationServices

let systemWideElement = AXUIElementCreateSystemWide()

var focusedElement: CFTypeRef?

let result = AXUIElementCopyAttributeValue(
    systemWideElement,
    kAXFocusedUIElementAttribute as CFString,
    &focusedElement
)

if result == .success {
    print("Found focused UI element")
} else {
    print("Could not find focused UI element")
}
```

This is enough to demonstrate that you understand how to **create an AX element and retrieve information through the Accessibility API**.
