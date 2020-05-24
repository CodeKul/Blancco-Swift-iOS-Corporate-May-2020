//
//  UserDecodable.swift
//  JSONDemo
//
//  Created by Apple on 19/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import Foundation

class UserDecodable: Codable {
    let name, job, id, createdAt: String

    init(name: String, job: String, id: String, createdAt: String) {
        self.name = name
        self.job = job
        self.id = id
        self.createdAt = createdAt
    }
}
