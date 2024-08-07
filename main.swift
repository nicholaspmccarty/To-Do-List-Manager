print("Hello, World!")

class Task {
    let id: Int
    let title: String
    let description: String
    let dueDate: String
    let isCompleted: Bool
    init(id: Int, title: String, description:String, dueDate: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.dueDate = dueDate
        self.isCompleted = isCompleted
        self.description = description
    }


}