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
}