//
//  ContentView.swift
//  SwiftUIDemo5
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isActive : Bool = false
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: ContentView2(rootIsActive: self.$isActive),
                isActive: self.$isActive
            ) {
                Text("Hello, World!")
            }
            .isDetailLink(false)
            .navigationBarTitle("Root")
        }
    }
}

struct ContentView2: View {
    @Binding var rootIsActive : Bool
    @State var toSecond: Bool = false

    var body: some View {
        NavigationLink(destination: ContentView3(rootIsActive: self.$toSecond), isActive: self.$toSecond) {
            Text("Hello, World #2!")
        }
        .isDetailLink(false)
        .navigationBarTitle("Two")
    }
}

struct ContentView3: View {
    @Binding var rootIsActive : Bool

    var body: some View {
        NavigationLink(destination: ContentView4(shouldPopToRootView: self.$rootIsActive)) {
            Text("Hello, World #3!")
        }
        .isDetailLink(false)
        .navigationBarTitle("Three")
    }
}

struct ContentView4: View {
    @Binding var shouldPopToRootView : Bool

    var body: some View {
        VStack {
            Text("Hello, World #4!")
            Button (action: { self.shouldPopToRootView = false } ){
                Text("Pop to second")
            }
        }.navigationBarTitle("Four")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
