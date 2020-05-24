//
//  ContentView.swift
//  SwiftUIDemo3
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct ContentViewNew: View {
    
    @State var name = ""
    var body: some View {
        VStack {
            Text(self.name)
                .padding()
                .font(.custom("Arial", size: 30))
            
            TextField("Enter name", text: self.$name)
                .padding()
            Button(action: buttonClick) {
                Text("Click me !")
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.red)
        }
    }
    
    func buttonClick() {
        self.name = "Codekul"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewNew()
    }
}
