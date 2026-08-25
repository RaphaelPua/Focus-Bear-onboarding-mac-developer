# TCC Debugging with `tccutil`

## What is TCC?

TCC stands for **Transparency, Consent, and Control**.

It is the macOS privacy system that controls whether applications can access
sensitive resources such as the microphone, camera, contacts, and accessibility
features.

## What is `tccutil`?

`tccutil` is a macOS command-line tool that can be used to reset TCC privacy
permissions. You use tccutil in the macOS Terminal, not inside Xcode or your Swift code.

It is useful when testing an application because it allows developers to
reset a permission and test the permission request again.

1. Reset All TCC Permissions for an Application

```bash
tccutil reset All com.example.MyApp
```
(Replace com.example.MyApp with your application's bundle identifier.)

2. Reset Camera Permission

- tccutil reset Camera com.example.MyApp

3. Reset Microphone Permission

- tccutil reset Microphone com.example.MyApp

4. Reset Accessibility Permission

- tccutil reset Accessibility com.example.MyApp

5. Reset Contacts Permission

- tccutil reset AddressBook com.example.MyApp

6. Reset Location Permission

- tccutil reset Location com.example.MyApp

## Why use tccutil?

When developing a macOS application, you may need to test what happens when a user:

- Has never granted permission
- Grants permission
- Denies permission
- Changes their permission later

tccutil allows developers to reset permissions so that the application can
request them again.

## Important Notes

- tccutil resets permissions; it does not grant permissions.
- The user must still approve the permission when macOS asks.
- The bundle identifier must match the application being tested.
- Resetting TCC permissions is mainly useful during development and testing.