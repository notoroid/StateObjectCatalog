//
//  ContentView.swift
//  Shared
//
//  Created by 能登 要 on 2020/07/27.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var fooManager: FooManager
    var event: Bool
    @ObservedObject var innerObject = InnerObject()
    
    var body: some View {
        VStack() {
            if event {
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
        ContentView(event: self.fooManager.event)
            .environmentObject(Self.fooManager)
    }
}
