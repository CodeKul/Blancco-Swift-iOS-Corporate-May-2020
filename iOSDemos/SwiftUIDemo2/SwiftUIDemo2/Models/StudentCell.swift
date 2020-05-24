//
//  StudentCell.swift
//  SwiftUIDemo2
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct StudentCell: View {
    var item: Student
    var body: some View {
        HStack {
            Image(item.imageUrl)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                Text("\(item.name)")
                Text("\(item.marks)")
            }
        }
    }
}

struct StudentCell_Previews: PreviewProvider {
    static var previews: some View {
        StudentCell(item: Student(name: "ABCD", rno: 1, marks: 98.34, imageUrl: "1"))
    }
}
