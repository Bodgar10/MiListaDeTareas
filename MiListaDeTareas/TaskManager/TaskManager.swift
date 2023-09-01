//
//  TaskManager.swift
//  MiListaDeTareas
//
//  Created by Bodgar Espinosa Miranda on 24/08/23.
//

protocol TaskManager {
    func getListTask() -> [Task]
    func addTask(task: Task)
    func updateStatus(index: Int)
}
