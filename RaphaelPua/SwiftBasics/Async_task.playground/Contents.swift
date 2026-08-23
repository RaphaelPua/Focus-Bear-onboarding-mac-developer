import Foundation

func fetchUserData() async -> String {
    print("Fetching user data...")

    try? await Task.sleep(for: .seconds(2))

    return "Raphael"
}

func fetchUserTasks() async -> [String] {
    print("Fetching user tasks...")

    try? await Task.sleep(for: .seconds(2))

    return [
        "Complete Swift module",
        "Review Git concepts",
        "Submit reflection"
    ]
}

Task {
    print("Starting...")

    let username = await fetchUserData()
    let tasks = await fetchUserTasks()

    print("User: \(username)")
    print("Tasks:")

    for task in tasks {
        print("- \(task)")
    }

    print("Finished!")
}
