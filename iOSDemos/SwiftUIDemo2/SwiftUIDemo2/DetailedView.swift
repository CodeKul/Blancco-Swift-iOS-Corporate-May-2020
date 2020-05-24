//
//  DetailedView.swift
//  SwiftUIDemo2
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct DetailedView: View {
    var stu: Student
    var body: some View {
        VStack {
            Image(stu.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                Text(stu.name)
                    .bold()
                    .foregroundColor(.blue)
                    .padding()
                Text("\(stu.marks)")
                    .foregroundColor(.red)
                    .padding()
            }
        }
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(stu: Student(name: "ABCD", rno: 1, marks: 98.34, imageUrl: "1"))
    }
}
