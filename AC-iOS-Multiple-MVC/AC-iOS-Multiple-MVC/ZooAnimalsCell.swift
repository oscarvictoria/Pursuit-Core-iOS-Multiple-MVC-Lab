//
//  ZooAnimalsCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Oscar Victoria Gonzalez  on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class ZooAnimalsCell: UITableViewCell {

@IBOutlet weak var imageA: UIImageView!
@IBOutlet weak var nameLabel: UILabel!
@IBOutlet weak var originLabel: UILabel!
    
    

    
    func configureCell(zooAnimal: ZooAnimal) {
        imageA.image = UIImage(named: String(zooAnimal.imageNumber))
        nameLabel.text = zooAnimal.name
        originLabel.text = zooAnimal.origin
    }
    
}
