import Foundation

func doTest() {
    let myObject = MyTask(id: 1, title: "My Task", description: "This is a task description.", dueDate: "2024-08-06")
    myObject.displayTaskDetails()
    myObject.markAsCompleted()
    print("Task Completed: \(myObject.isCompleted)")
}

// Call the function to execute the tasks
doTest()
