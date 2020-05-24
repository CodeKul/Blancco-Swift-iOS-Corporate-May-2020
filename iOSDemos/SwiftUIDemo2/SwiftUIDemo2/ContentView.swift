//
//  ContentView.swift
//  SwiftUIDemo2
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let arrData = Student.all()
    
    var body: some View {
        NavigationView {
            List(self.arrData, id: \.rno) { item in
                NavigationLink(destination: DetailedView(stu: item)) {
                    StudentCell(item: item)
                }
            }
            .navigationBarTitle("Student list")
        }
        .onAppear() {
            print("onAppear")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

