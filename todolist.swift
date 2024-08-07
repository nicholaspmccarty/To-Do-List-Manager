import Foundation

class ToDoList {
    // Class Variables
    var tasks: [MyTask] = []

    // Default initializer
    init() {}

    // Paramerized Intializer
    init(tasks: [MyTask]) {
        self.tasks = tasks
    }


    // helper method to ask task to our tasks array
    func addTask(task: MyTask) {
        tasks.append(task)
    }

    func removeTask(task: MyTask) {
        let id: Int = task.id

        if let index = tasks.firstIndex(where: { task in 
            return task.id == id 
            }) {
            // Step 3: Remove the task from the array
            tasks.remove(at: index)
     }

     func markTaskAsCompleted() {
        let id: Int = task.id

        if let index = tasks.first(where: { $0.id == id }) {
            print("Found Task: \(index)")
        } else {
            print("ERROR: Task not found. ")
                }
     }



    }
}