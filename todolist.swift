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

    /// A simple method for removing a task from our global array.
    func removeTask(task: MyTask) {
        let id: Int = task.id

        if let index = tasks.firstIndex(where: { task in 
            return task.id == id 
            }) {
            // Step 3: Remove the task from the array
            tasks.remove(at: index)
     }
    }

    // A simple method for marking tasks completed in our array. First we grab it, then set it to completed.
     func markTaskAsCompleted(task: MyTask) {
        let id: Int = task.id
        
        // if index exists
        if let index = tasks.firstIndex(where: { $0.id == id }) {
            print("Found Task: \(tasks[index])")
            tasks[index].isCompleted = true
        }  else {
            print("ERROR: Task not found. ")
                }
     }


    // A simple function to list all the tasks from our global tasks array. 
     func listAllTasks() {
        for task in tasks {
            print(task.title)
        }
     }


    // A more advanced construction that will filter our tasks based off a provided boolean status.
    // If we are looking for all tasks that are completed, we pass a true value. If else, provide a false value.
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
