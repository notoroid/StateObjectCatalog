//
//  ContentView.swift
//  Shared
//
//  Created by 能登 要 on 2020/07/26.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var fooManager: FooManager
    @ObservedObject var innerObject = InnerObject()
    
    var body: some View {
        VStack() {
            if self.fooManager.event {
                Text("Hello, world!").padding()
            } else {
                Text("Hello, world2!").padding()
            }
            
            Button(action: {
                self.fooManager.event.toggle()
            }, label: {
                Text("Toggle")
            })
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var fooManager = FooManager()
    static var previews: some View {
        ContentView()
            .environmentObject(Self.fooManager)
    }
}
