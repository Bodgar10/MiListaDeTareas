//
//  MyTaskViewControllerTests.swift
//  MiListaDeTareasTests
//
//  Created by Bodgar Espinosa Miranda on 24/08/23.
//

import XCTest
@testable import MiListaDeTareas

final class MyTaskViewControllerTests: XCTestCase {
    
    private var taskManager: MockTaskManager!
    var viewController: MyTaskViewController!
    
    override func setUp() {
        taskManager = MockTaskManager()
        viewController = MyTaskViewController()
        viewController.taskManager = taskManager
    }
    
    override func tearDown() {
        taskManager = nil
        viewController = nil
    }
    
    func test_viewDidLoad_withoutList_shouldBeEmptyList() {
        XCTAssertFalse(taskManager.getListTaskCalled)
        viewController.viewDidLoad()
        XCTAssertTrue(taskManager.getListTaskCalled)
        XCTAssertEqual(viewController.lists?.count, 0)
        XCTAssertEqual(viewController.lists, [])
    }
    
    func test_viewDidLoad_withOneValue_shouldBeOneValueInList() {
        let taskOne = Task(title: "Ir al super")
        taskManager = MockTaskManager(list: [taskOne])
        viewController.taskManager = taskManager
        viewController.viewDidLoad()
        XCTAssertEqual(viewController.lists?.count, 1)
        XCTAssertEqual(viewController.lists, [taskOne])
    }
    
    private class MockTaskManager: TaskManager {
        var getListTaskCalled = false
        private var listTask: [Task]
        
        init(list: [Task] = []) {
            self.listTask = list
        }
        
        func getListTask() -> [MiListaDeTareas.Task] {
            getListTaskCalled = true
            return listTask
        }
        
        func addTask(task: MiListaDeTareas.Task) {
            
        }
        
        func updateStatus(index: Int) {
            
        }
    }
}
