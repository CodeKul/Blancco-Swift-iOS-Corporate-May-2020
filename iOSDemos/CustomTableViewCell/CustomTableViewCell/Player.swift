//
//  Player.swift
//  CustomTableViewCell
//
//  Created by Apple on 12/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import Foundation

class Player {
    
    var name: String
    var team: String
    var image: String
    var skill: String
    
    init(name: String, team: String, image: String, skill: String) {
        self.name = name
        self.team = team
        self.image = image
        self.skill = skill
    }
}
