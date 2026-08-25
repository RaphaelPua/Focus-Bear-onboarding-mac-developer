# TCC System Overview

## What is TCC?

**TCC (Transparency, Consent, and Control)** is a macOS privacy system that controls whether applications can access sensitive user data and system resources.

For example, macOS may ask for permission when an app wants to access:

* 📁 Documents and folders
* 📷 Camera
* 🎙️ Microphone
* 📍 Location
* 🖥️ Screen recording
* ♿ Accessibility features
* 👤 Contacts, calendars, and other private data

## How TCC works

When an application requests access to a protected resource:

```text
App
 ↓
Requests access
 ↓
macOS TCC checks permission
 ↓
User is asked for permission
 ↓
Allow / Deny
 ↓
TCC stores the decision
```

The application generally shouldn't assume that access will automatically be granted.

## User Consent

The user can control permissions through:

**System Settings → Privacy & Security**

For example:

```text
Privacy & Security
├── Camera
├── Microphone
├── Location Services
├── Accessibility
├── Full Disk Access
└── Screen & System Audio Recording
```

## Why TCC is important

TCC helps protect users from applications accessing sensitive information without permission.

For example, without privacy controls, a malicious application could potentially try to access personal documents or record the user's microphone.

## TCC and Developers

When developing a macOS application, you need to consider:

* What sensitive resources your app needs
* Whether the user has granted permission
* Appropriate privacy usage descriptions
* Handling permission being denied
* Requesting only the permissions your app actually needs

## Example

If an app wants to use the microphone:

```text
Application
    ↓
Requests microphone access
    ↓
TCC
    ↓
User sees permission prompt
    ↓
Allow → App can use microphone
Deny  → App cannot use microphone
```

## Key Takeaways

* **TCC = Transparency, Consent, and Control**
* It is a macOS privacy/security system.
* It controls access to sensitive data and resources.
* Users decide whether applications receive access.
* Developers need to properly request and handle permissions.
* Apps should follow the **principle of least privilege** and only request permissions they actually need.