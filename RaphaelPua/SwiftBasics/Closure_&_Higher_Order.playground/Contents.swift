import Cocoa

var greeting = "Hello, playground"

// map is used when you want to transform every item in an array.
let taskDurations = [10, 35, 60, 85]

let durationsInSeconds = taskDurations.map { duration in duration * 60
}

print("Durations in seconds: \(durationsInSeconds)")

// filter is used when you only want to keep certain items.

let longTasks = taskDurations.filter { duration in
    duration > 30
}

print("The long tasks: \(longTasks)")

// reduce is used to combine all the values into one result.
// 0 is the start of the count

let totalTime = taskDurations.reduce(0) { total, duration in
    total + duration
}

print("Total time: \(totalTime)")
