//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Apple on 12/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var players: [Player]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let p1 = Player(name: "Virat", team: "RCB", image: "virat.jpg", skill: "Bat")
        let p2 = Player(name: "Sachin", team: "MI", image: "sachin.jpg", skill: "Bat")
        let p3 = Player(name: "Rohit", team: "MI", image: "rohit.png", skill: "Bat")
        let p4 = Player(name: "Dhoni", team: "CSK", image: "dhoni.jpg", skill: "Keeper")
        
        players = [p1, p2, p3, p4]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return players?.count ?? 0
        }
        else {
            return 10
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        }
        return 30
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Players"
        }
        return "New Section"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
            let player = players?[indexPath.row]
            cell.setData(player: player!)
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2")
            cell?.textLabel?.text = "Cell: \(indexPath.row))"
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}

