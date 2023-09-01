//
//  ViewController.swift
//  MiListaDeTareas
//
//  Created by Bodgar Espinosa Miranda on 24/08/23.
//

import UIKit

class MyTaskViewController: UIViewController {

    var taskManager: TaskManager?
    var lists: [Task]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lists = taskManager?.getListTask()
    }
    
    
}

