# Notarization

## Goal

Understand **macOS notarization** and the tools used to notarize an application.

## What is Notarization?

**Notarization** is Apple's process of checking a macOS application for malicious software before it is distributed outside the Mac App Store.

In simple terms:

> **Code signing** proves who created/signed the app, while **notarization** lets Apple check the app for security issues.

## Basic Process

```text
Build App
   ↓
Code Sign
   ↓
Create Archive
   ↓
Submit to Apple
   ↓
Apple scans the app
   ↓
Notarization succeeds
   ↓
Staple notarization ticket
   ↓
Distribute App
```

## Important Notarization Tools

### 1. `notarytool`

Apple's command-line tool for submitting software to Apple's notarization service.

Example:

```bash
xcrun notarytool submit MyApp.zip
```

It can also be used to check the status of a submission.

### 2. `stapler`

Used to attach Apple's notarization ticket to the application.

Example:

```bash
xcrun stapler staple MyApp.app
```

This allows the notarization information to travel with the application.

### 3. `spctl`

Used to assess whether macOS considers an application properly signed/notarized.

Example:

```bash
spctl --assess --type execute MyApp.app
```

## Code Signing vs Notarization

|              | Code Signing                                    | Notarization                                    |
| ------------ | ----------------------------------------------- | ----------------------------------------------- |
| Purpose      | Identifies the developer and protects integrity | Apple checks the software for malicious content |
| Performed by | Developer                                       | Apple                                           |
| Main tool    | `codesign`                                      | `notarytool`                                    |
| Result       | Signed application                              | Apple notarization approval                     |

## Key Takeaway

**Notarization is an important part of distributing macOS applications outside the Mac App Store.**

The main tools to remember are:

* **`notarytool`** → Submit the application to Apple.
* **`stapler`** → Attach the notarization ticket.
* **`spctl`** → Check whether macOS accepts the application's security assessment.
