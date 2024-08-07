import Foundation

// This is our main file that will test our MyTask and ToDoList classes
func doTest() {
    
    print("Testing DisplayTaskDetails")
    let myObject = MyTask(id: 1, title: "My Task The Best Task", description: "This is a task description.", dueDate: "2024-08-06")
    myObject.displayTaskDetails()
    
    print("")
    print("Testing isCompleted")
    
    // Checking to see if myTask is completed
    print("Task Completed: SHOULD BE FALSE ->>>)")
    print("Task Completed IS : \(myObject.isCompleted)")
    let TDL = ToDoList()
    
    print("")
    print("myObject 2 created and initialized. Let's test the ToDoList class")
    TDL.addTask(task: myObject)
    TDL.markTaskAsCompleted(task: myObject)
    print("Task Completed: SHOULD BE TRUE ->>>>")
    print("Task Completed is : \(myObject.isCompleted)")

    // Testing listAllTasks
    print("")
    print("Testing listAllTasks") 
    TDL.listAllTasks()

    // Testing FilterTasks
    let myObject3 = MyTask(id: 1, title: "obj3", description: "This is a task description.", dueDate: "2024-08-06")
    let myObject4 = MyTask(id: 1, title: "obj4", description: "This is a task description.", dueDate: "2024-08-06")
    let myObject5 = MyTask(id: 1, title: "sweet object5", description: "This is a task description.", dueDate: "2024-08-06")
    myObject4.markAsCompleted()
    print("")
    
    print("Testing listAllTasks again")
    // Add Objects added to the ToDoList
    TDL.addTask(task: myObject3)
    TDL.addTask(task: myObject4)
    TDL.addTask(task: myObject5)
    TDL.listAllTasks()

    print("")
    print("Testing FilterTasks")
    
    var ret: [MyTask] = []
    ret = TDL.filterTasks(status: true)
    print("We will be displaying all true tasks with status TRUE")
    
    // For loop to iterate through the list
    for task in ret {
        print(task.title)
    }
    
    
    
}

// Call the function to execute the tasks
doTest()
