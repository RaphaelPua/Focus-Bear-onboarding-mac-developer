# Activity Monitor Overview

## What is Activity Monitor?

Activity Monitor is a macOS system utility that allows me to monitor running applications, processes, and system resources.

It provides information about:

- CPU usage
- Memory usage
- Energy usage
- Disk activity
- Network activity

Activity Monitor can be useful when debugging performance problems because it helps identify processes that are consuming excessive system resources.

## Debugging Use Cases

### 1. High CPU Usage

The **CPU** tab shows how much processing power each application or process is using.

If an application is using an unusually high percentage of CPU for an extended period, it could indicate:

- An inefficient loop
- A process that is stuck
- Excessive background processing
- A bug causing repeated calculations

For example, if my application suddenly becomes slow and Activity Monitor shows that it is using a very high amount of CPU, I can investigate what the application is doing and determine whether a particular operation is causing the problem.

### 2. High Memory Usage

The **Memory** tab shows how much RAM each process is using.

This can help identify applications that are consuming excessive amounts of memory.

A continuously increasing memory usage could potentially indicate a **memory leak**, where an application continues to allocate memory without properly releasing it.

Activity Monitor can therefore help me identify which process may be responsible for unusual memory consumption.

### 3. Application Becomes Unresponsive

If an application stops responding, Activity Monitor can help me determine whether the application is still running.

I can locate the application in the process list and check its CPU and memory usage.

If necessary, I can select the process and use the **Stop** button to quit or force quit it.

This can be useful when an application is frozen and cannot be closed normally.

### 4. Finding Resource-Heavy Background Processes

Sometimes a computer can become slow even when I am not actively running a demanding application.

Activity Monitor can help identify background processes that are consuming significant CPU, memory, disk, or network resources.

This allows me to determine whether another process is affecting the performance of my development environment.

### 5. Debugging Slow Development Tools

As a developer, I may have several applications running simultaneously, such as:

- VS Code
- Terminal
- GitHub Desktop
- Web browsers
- Local development servers
- Databases

If my development environment becomes slow, I can use Activity Monitor to determine which application or process is consuming the most resources.

This can help narrow down the cause instead of assuming that the problem is with my code.

### 6. Checking Disk Activity

The **Disk** tab shows how much data processes are reading from and writing to storage.

High disk activity can help identify processes that are performing large amounts of file operations.

This could be useful when debugging an application that is unexpectedly slow while reading or writing files.

### 7. Checking Network Activity

The **Network** tab provides information about network activity from different processes.

This can help when investigating applications that appear to be making unexpected or excessive network requests.

For example, if a development application is unexpectedly using a large amount of network bandwidth, Activity Monitor can help identify which process is responsible.

## Example Debugging Scenario

Suppose my development computer suddenly becomes slow while running a local application.

Instead of immediately restarting my computer, I could:

1. Open **Activity Monitor**.
2. Check the **CPU** tab.
3. Sort processes by CPU usage.
4. Check whether my application is consuming an unusually large amount of CPU.
5. Check the **Memory** tab to see whether it is consuming excessive RAM.
6. Check the **Disk** and **Network** tabs if the problem appears to involve file or network operations.
7. Identify the process causing the unusual resource usage.
8. Investigate the application or code responsible for the process.

This provides evidence that can help narrow down the cause of the performance problem. This is important as working on an app like Focus Bear, it is very important that the application does not consume a lot of RAM or CPU as it is a productivity app, and it should not cause any performance issues. It should help the users to be more productive instead of causing the slowdown in productivity.

## Important Consideration

Activity Monitor can help identify **symptoms and resource usage**, but it does not necessarily explain why a bug is occurring.

For example, if an application uses 100% CPU, Activity Monitor tells me that the process is consuming a large amount of CPU, but I still need to investigate the application's code, logs, debugger, or other development tools to determine the underlying cause.

Therefore, I would use Activity Monitor as one part of the debugging process rather than relying on it as the only debugging tool.