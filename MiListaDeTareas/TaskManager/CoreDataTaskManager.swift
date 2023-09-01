//
//  CoreDataTaskManager.swift
//  MiListaDeTareas
//
//  Created by Bodgar Espinosa Miranda on 24/08/23.
//

final class CoreDataTaskManager: TaskManager {
    
    private var listTask: [Task]
    
    init(list: [Task] = []) {
        self.listTask = list
    }
    
    func getListTask() -> [Task] {
        return listTask
    }
    
    func addTask(task: Task) {
        listTask.append(task)
    }
    
    func updateStatus(index: Int) {
        guard index <= (listTask.count - 1) else {return}
        listTask[index].completed = true
    }
}
