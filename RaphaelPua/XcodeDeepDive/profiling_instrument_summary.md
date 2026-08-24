# Instruments – CPU & Memory

## Overview

I used Apple's Instruments tool to profile my HelloApp macOS application. I focused on CPU and memory usage to understand the application's basic performance.

## CPU Usage

I monitored the application's CPU usage while it was running. It was only using 3.9% of the CPU.

### CPU Observation

The application relatively used more CPU when it started, but gradually used little CPU while it was idle. CPU usage increased slightly when I interacted with the application by using the greet button.

### CPU Result

The application did not appear to have unusually high CPU usage during my test. It behaves normal with it only using a minor amount of CPU.

## Memory Usage

I also monitored the application's memory usage. It used 26.95 MiB of memory.

### Memory Observation

Memory usage remained relatively stable while the application was running. I did not observe a large increase in memory usage during the test. It runs as it was expected as the app was very simple and only had texts.

### Memory Result

There were no obvious signs of excessive memory usage during my basic test, it just runs normally.

## What I Learned

Instruments provides useful information about how an application uses system resources. It can help inform me if my code may be using too much CPU or Memory, causing its performance to drop and making the application feel slow. CPU profiling can help identify operations that are using too much processing power, while memory profiling can help identify excessive memory usage or potential memory leaks.

For a simple macOS application like HelloApp, the CPU and memory usage was relatively low. I learned that Instruments can be used to investigate performance problems before they become larger issues.