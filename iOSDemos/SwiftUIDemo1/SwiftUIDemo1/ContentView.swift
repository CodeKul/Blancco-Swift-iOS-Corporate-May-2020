//
//  ContentView.swift
//  SwiftUIDemo1
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome to codekul")
                .fontWeight(.bold)
                .foregroundColor(.red)
                .font(.largeTitle)
                .padding()
            Spacer()
            Image("ironman")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            Spacer()
            HStack {
                Text("iOS-Swift")
                    .padding([.top, .leading, .bottom])
                Text("Blancco Tech")
                    .padding([.top, .trailing, .bottom])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
