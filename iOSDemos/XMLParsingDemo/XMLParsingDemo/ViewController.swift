//
//  ViewController.swift
//  XMLParsingDemo
//
//  Created by Apple on 18/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, XMLParserDelegate {

    var parser: XMLParser?
    var plants: [[String: String]]?
    var plant: [String: String]?
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "http://www-db.deis.unibo.it/courses/TW/DOCS/w3schools/xml/plant_catalog.xml")
        parser = XMLParser(contentsOf: url!)
        parser?.delegate = self
        parser?.parse()
    }

    func parserDidStartDocument(_ parser: XMLParser) {
        print("parserDidStartDocument")
    }

    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if elementName == "CATALOG" {
            plants = []
        }
        else if elementName == "PLANT" {
            plant = [:]
        }
        else {
            data = ""
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        data?.append(string)
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "CATALOG" {
            print(plants!)
        }
        else if elementName == "PLANT" {
            plants?.append(plant!)
        }
        else {
            plant![elementName] = data
        }
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        print("parserDidEndDocument")
    }
}

