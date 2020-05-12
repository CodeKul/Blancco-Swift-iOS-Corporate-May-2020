//
//  MyTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Apple on 12/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var profile_image: UIImageView!
    @IBOutlet var nameLable: UILabel!
    @IBOutlet var teamLabel: UILabel!
    @IBOutlet var skillLabel: UILabel!
    
    func setData(player: Player) {
        profile_image.image = UIImage(named: player.image)
        nameLable.text = player.name
        teamLabel.text = player.team
        skillLabel.text = player.skill
    }
    
}
