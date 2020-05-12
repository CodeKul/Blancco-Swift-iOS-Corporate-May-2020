//
//  MyCollectionViewCell.swift
//  CollectionView
//
//  Created by Apple on 12/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var lbl: UILabel!
    
    func setData(data: String) {
        lbl.text = data
    }
}
