//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   // Embeded View Controller to Navigation Controller
   // Dragged a Table View to the View Controller
   // Connected Table View to the View Controller
   // as an outlet named tableView
   // I also set constrains to 0 for all four directions.
   // Changed the title to "Zoo Animals"
  // Added 1 prototype Cell called "zooAnimalsCell"
    @IBOutlet weak var tableView: UITableView!
    
    private var animals = [ZooAnimal]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        animals = ZooAnimal.zooAnimals
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return animals.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
