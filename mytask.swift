import Foundation

/**
 * Represents a task with an ID, title, description, due date, and completion status.
 */
class MyTask {
    let id: Int
    let title: String
    let description: String
    let dueDate: String
    var isCompleted: Bool

    /**
     * Initializes a new task.
     *
     * - Parameters:
     *   - id: The unique identifier for the task.
     *   - title: The title of the task.
     *   - description: A brief description of the task.
     *   - dueDate: The due date for the task in string format.
     *   - isCompleted: The completion status of the task. Defaults to `false`.
     */
    init(id: Int, title: String, description: String, dueDate: String, isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.description = description
        self.dueDate = dueDate
        self.isCompleted = isCompleted
    }

    /**
     * Marks the task as completed.
     */
    func markAsCompleted() {
        isCompleted = true
    }

    /**
     * Marks the task as pending.
     */
    func markAsPending() {
        isCompleted = false
    }

    /**
     * Displays the details of the task.
     */
    func displayTaskDetails() {
        print("Task ID: \(id)")
        print("Title: \(title)")
        print("Description: \(description)")
        print("Due Date: \(dueDate)")
        print("Completed: \(isCompleted)")
    }
}
