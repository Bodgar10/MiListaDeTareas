//
//  CoreDataManagerTests.swift
//  MiListaDeTareasTests
//
//  Created by Bodgar Espinosa Miranda on 24/08/23.
//

import XCTest
@testable import MiListaDeTareas

// MARK: - Production

final class CoreDataManagerTests: XCTestCase {
    /// Primero creas el test fallido
    /// Creas el test success
    /// Refactorizas
    
    func test_getListTasks_withoutTasks_ShouldBeEmptyList() {
        // Given
        let dataManager = CoreDataTaskManager()
        
        //When
        
        //Then
        XCTAssertEqual(dataManager.getListTask(), [])
    }
    
    func test_getListTasks_withOneTask_ShouldBeOneTaskInList() {
        //Given
        let taskOne = Task(title: "Ir al super")
        let dataManager = CoreDataTaskManager(list: [taskOne])
        
        //When
        
        //Then
        XCTAssertEqual(dataManager.getListTask().count, 1)
        XCTAssertEqual(dataManager.getListTask(), [taskOne])
    }
    
    func test_getListTasks_addingNewTask_ShouldBeTwoTasks() {
        // Given
        let taskOne = Task(title: "Ir al super")
        let dataManager = CoreDataTaskManager(list: [taskOne])
        XCTAssertEqual(dataManager.getListTask().count, 1)
        
        // When
        let taskTwo = Task(title: "Ir al gym")
        dataManager.addTask(task: taskTwo)
        
        //Then
        XCTAssertEqual(dataManager.getListTask().count, 2)
        XCTAssertEqual(dataManager.getListTask(), [taskOne, taskTwo])
    }
    
    func test_updateStatus_withOneTask_statusShoudBeInTrue() {
        //Given
        let taskOne = Task(title: "Ir al super")
        let dataManager = CoreDataTaskManager(list: [taskOne])
        
        XCTAssertFalse(dataManager.getListTask()[0].completed)
        
        //When
        let taskTwo = Task(title: "Ir al gym")
        dataManager.addTask(task: taskTwo)
        dataManager.updateStatus(index: 0)
        dataManager.updateStatus(index: 1)
        
        
        //Then
        XCTAssertTrue(dataManager.getListTask()[0].completed)
        XCTAssertTrue(dataManager.getListTask()[1].completed)
    }
}
