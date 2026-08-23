import Cocoa

var greeting = "Hello, playground"

import Foundation

// MARK: - Variables

// Variables are declared using 'var'.
// Their values can be changed.
var username: String = "Raphael"
var loginCount: Int = 0

print("Username: \(username)")
print("Login count: \(loginCount)")

loginCount += 1

print("Updated login count: \(loginCount)")


// MARK: - Constants

// Constants are declared using 'let'.
// Their values cannot be changed after assignment.
let appName: String = "Focus Bear"
let maximumLoginAttempts: Int = 3

print("Application: \(appName)")
print("Maximum login attempts: \(maximumLoginAttempts)")


// MARK: - Data Types

let projectName: String = "Focus Bear"
let numberOfTasks: Int = 6
let completionPercentage: Double = 85.5
let isTaskComplete: Bool = true

print("Project: \(projectName)")
print("Number of tasks: \(numberOfTasks)")
print("Completion: \(completionPercentage)%")
print("Task complete: \(isTaskComplete)")


// MARK: - Type Inference

// Swift can automatically determine the data type.
let developerName = "Raphael"   // String
let taskCount = 10              // Int
let progress = 0.75             // Double
let isDeveloper = true          // Bool

print("Developer: \(developerName)")
print("Tasks: \(taskCount)")
print("Progress: \(progress)")
print("Is developer: \(isDeveloper)")
