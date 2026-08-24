# Code Signing Basics

## Goal

Understand how **code signing** and **provisioning** work in Apple development.

## Code Signing

**Code signing** verifies that an application:

* Comes from a known developer.
* Has not been modified after it was signed.
* Can be trusted by macOS/iOS.

Apple uses **certificates** and cryptographic signatures to achieve this.

## Signing Certificate

A **signing certificate** identifies the developer or development team.

For example:

```text
Developer
    ↓
Signing Certificate
    ↓
Signs the App
```

The certificate is used to create a digital signature for the application.

## Provisioning

A **provisioning profile** connects several things together:

* Developer/team
* App's **Bundle ID**
* Signing certificate
* Entitlements/capabilities
* Allowed devices (where applicable)

It essentially tells Apple's systems:

> "This developer is authorised to build/sign this particular application with these capabilities."

## Bundle Identifier

A **Bundle ID** uniquely identifies an application.

Example:

```text
com.example.UnitTester
```

The Bundle ID needs to match the identifier associated with the app's signing configuration.

## Signing Process

A simplified process is:

```text
Developer
    ↓
Create Xcode Project
    ↓
Bundle Identifier
    ↓
Signing Certificate
    ↓
Provisioning Profile
    ↓
Code Signing
    ↓
Signed Application
```

## Xcode

Xcode can manage much of this automatically.

In: **Project → Target → Signing & Capabilities**

you can configure:

* **Team**
* **Bundle Identifier**
* **Signing Certificate**
* **Provisioning Profile**
* **Automatically manage signing**

With **Automatically manage signing**, Xcode handles much of the provisioning configuration for you.

## Why is code signing important?

Code signing provides:

* **Authenticity** — identifies who signed the application.
* **Integrity** — helps detect whether the application was modified.
* **Trust** — allows Apple's platforms to determine whether an application is from an authorised source.