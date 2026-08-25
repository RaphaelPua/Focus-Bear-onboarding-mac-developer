# Helpers, Login Items & Privileged Tools

## Architecture Diagram

                         macOS
                           │
          ┌────────────────┼────────────────┐
          │                │                │
          ▼                ▼                ▼
   ┌─────────────┐  ┌─────────────┐  ┌─────────────────┐
   │  Main App   │  │ Login Item  │  │ Privileged Tool │
   │             │  │             │  │                 │
   │ UI / User   │  │ Starts at   │  │ Performs tasks  │
   │ interaction │  │ login       │  │ requiring       │
   └──────┬──────┘  └─────────────┘  │ elevated access │
          │                          └────────┬────────┘
          │                                   │
          ▼                                   ▼
   ┌─────────────┐                    ┌──────────────┐
   │    Helper   │                    │ macOS /      │
   │   Service   │───────────────────►│ Protected    │
   │             │                    │ Resources    │
   │ Background  │                    └──────────────┘
   │ operations  │
   └─────────────┘

## 1. Main App

The **main app** is the application the user interacts with.

Examples:

* User interface
* Buttons and settings
* Displaying information
* Handling normal user actions

User
↓
Main App

## 2. Helper

A **helper** is a separate component that supports the main application.

It can be useful for tasks that need to happen **in the background** or separately from the main app.


Main App
↓
Helper
↓
Background Task


### Why use a helper?

* Perform background work
* Separate responsibilities from the main app
* Keep the main application focused on UI/user interaction
* Perform tasks that may need to continue independently

**Simple example:**

A backup application could have:


Main App → User interface
    ↓
Helper → Performs backup in background


## 3. Login Items

A **Login Item** is an application or helper that macOS launches when the user logs in.


User logs into Mac
    ↓
Login Item
    ↓
Starts automatically

### Why use Login Items?

Useful when an application needs to:

* Start automatically
* Run background services
* Monitor something
* Provide functionality immediately after login

### Example

A cloud storage application might start a background component when you log into your Mac so it can begin synchronising files.

## 4. Privileged Tools

A **privileged tool** is a component that performs operations requiring **elevated system privileges**.

Some operations require more permissions than a normal application should have.


Main App
    ↓
Privileged Tool
    ↓
Protected System Resource


### Why are they important?

They allow applications to perform certain administrative operations while keeping those powerful permissions separate from the main application.

However, they introduce **security risks** because they have greater access to the system.

Therefore:

> Only give a privileged tool the permissions it actually needs.


# 5. How they relate to each other

Think of the application as a team:


                 macOS
                   │
                   ▼
             ┌───────────┐
             │ Main App  │
             │           │
             │    UI     │
             └─────┬─────┘
                   │
            ┌──────┴───────┐
            ▼              ▼
       ┌──────────┐   ┌─────────────┐
       │ Helper   │   │ Privileged  │
       │          │   │    Tool     │
       │Background│   │ Elevated    │
       │  tasks   │   │ operations  │
       └──────────┘   └─────────────┘

             Login Item
                  ↓
        Starts at user login


# 6. Key Differences

| Component           | Main purpose                     | When it runs  | Access                       |
| ------------------- | -------------------------------- | ------------- | ---------------------------- |
| **Main App**        | User interaction                 | When opened   | Normal app permissions       |
| **Helper**          | Background/supporting tasks      | When needed   | Usually limited              |
| **Login Item**      | Start automatically              | User login    | Depends on its configuration |
| **Privileged Tool** | Administrative/system operations | When required | Elevated privileges          |

## 7. Security Considerations

These components are important because they can run **outside the normal UI flow**.

Developers should consider:

### Least privilege

Only give a component the permissions it actually needs.

❌ Give helper full system access

✅ Give helper only the access required

### User consent

Some operations require the user's permission.

### Secure communication

The main app and helper should communicate securely so another application cannot impersonate the helper.

### Code signing

Helpers and privileged components should be properly **code signed** so macOS can verify their identity and integrity.

## 🧠 Easy way to remember

Think:

**Main App = UI**

**Helper = Background worker**

**Login Item = Starts at login**

**Privileged Tool = Needs elevated access**


Main App
   │
   ├── Helper → "Do this in the background"
   │
   ├── Login Item → "Start when I log in"
   │
   └── Privileged Tool → "I need higher permissions"