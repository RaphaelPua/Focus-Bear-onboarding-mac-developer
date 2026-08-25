# Sandbox Entitlements

## What is App Sandbox?

App Sandbox is a macOS security mechanism that restricts an application's
access to system resources and user data.

Applications can only access resources that they are allowed to use through
their sandbox configuration and entitlements.

## What are entitlements?

Entitlements are settings that tell macOS which capabilities an application
requires.

For example, an application can request access to:

- Network connections
- Camera
- Microphone
- User-selected files
- Downloads
- Bluetooth

## Entitlements used in this project

### App Sandbox

App Sandbox: `com.apple.security.app-sandbox`

This enables App Sandbox for the application and restricts its access to
system resources and user data.

### Outgoing Network Connections

Outgoing Connections: `com.apple.security.network.client`

This allows the application to make outgoing network connections.

## Why are entitlements important?

Entitlements follow the principle of least privilege. An application should
only request the capabilities that it actually needs.

This reduces the potential impact if the application is compromised.