import Foundation

// MARK: - Variables

// A variable is declared with 'var' and its value can be changed.
var username: String = "Raphael"
var loginCount: Int = 0

print("Username: \(username)")
print("Login count: \(loginCount)")

loginCount += 1

print("Updated login count: \(loginCount)")


// MARK: - Constants

// A constant is declared with 'let' and cannot be changed after being assigned.
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

// Swift can automatically determine the type from the assigned value.
let developerName = "Raphael"  // String
let taskCount = 10             // Int
let progress = 0.75            // Double
let isDeveloper = true         // Bool

print("Developer: \(developerName)")
print("Tasks: \(taskCount)")
print("Progress: \(progress)")
print("Is developer: \(isDeveloper)")