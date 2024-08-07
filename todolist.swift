import Foundation

/**
 * Represents a to-do list containing multiple tasks.
 */
class ToDoList {
    /// An array to hold the tasks in the to-do list.
    var tasks: [MyTask] = []

    /**
     * Default initializer.
     */
    init() {}

    /**
     * Parameterized initializer.
     *
     * - Parameter tasks: An array of `MyTask` objects to initialize the to-do list.
     */
    init(tasks: [MyTask]) {
        self.tasks = tasks
    }

    /**
     * Adds a task to the to-do list.
     *
     * - Parameter task: The `MyTask` object to be added.
     */
    func addTask(task: MyTask) {
        tasks.append(task)
    }

    /**
     * Removes a task from the to-do list.
     *
     * - Parameter task: The `MyTask` object to be removed.
     */
    func removeTask(task: MyTask) {
        let id: Int = task.id

        if let index = tasks.firstIndex(where: { task in 
            return task.id == id 
            }) {
            tasks.remove(at: index)
        }
    }

    /**
     * Marks a task as completed.
     *
     * - Parameter task: The `MyTask` object to be marked as completed.
     */
    func markTaskAsCompleted(task: MyTask) {
        let id: Int = task.id
        
        if let index = tasks.firstIndex(where: { $0.id == id }) {
            print("Found Task: \(tasks[index])")
            tasks[index].isCompleted = true
        } else {
            print("ERROR: Task not found.")
        }
    }

    /**
     * Lists all the tasks in the to-do list.
     */
    func listAllTasks() {
        for task in tasks {
            print(task.title)
        }
    }

    /**
     * Filters tasks based on their completion status.
     *
     * - Parameter status: A boolean value indicating the completion status to filter by.
     * - Returns: An array of `MyTask` objects that match the specified completion status.
     */
    func filterTasks(status: Bool) -> [MyTask] {
        var ret: [MyTask] = []
        for i in 0..<tasks.count {
            if tasks[i].isCompleted == status {
                ret.append(tasks[i])
            }
        }
        
        return ret
    }
}
