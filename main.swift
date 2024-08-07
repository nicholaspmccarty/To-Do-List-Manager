import Foundation

// This is our main file that will test our taskboards. 
func doTest() {
    let myObject = MyTask(id: 1, title: "My Task", description: "This is a task description.", dueDate: "2024-08-06")
    myObject.displayTaskDetails()
    
    // Checking to see if myTask is completed
    print("Task Completed: SHOULD BE FALSE ->>>)")
    print("Task Completed IS : \(myObject.isCompleted)")
    let myObject2 = ToDoList()
    print("")
    print("myObject 2 created and initialized. Let's test the ToDoList class")
    myObject2.addTask(task: myObject)
    myObject2.markTaskAsCompleted(task: myObject)
    print("Task Completed: SHOULD BE TRUE ->>>>")
    print("Task Completed is : \(myObject.isCompleted)")

}

// Call the function to execute the tasks
doTest()
