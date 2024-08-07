import Foundation

class MyTask {
    let id: Int
    let title: String
    let description: String
    let dueDate: String
    var isCompleted: Bool

    init(id: Int, title: String, description: String, dueDate: String, isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.description = description
        self.dueDate = dueDate
        self.isCompleted = isCompleted
    }

    func markAsCompleted() {
        isCompleted = true
    }

    func markAsPending() {
        isCompleted = false
    }

    func displayTaskDetails() {
        print("Task ID: \(id)")
        print("Title: \(title)")
        print("Description: \(description)")
        print("Due Date: \(dueDate)")
        print("Completed: \(isCompleted)")
    }
}

