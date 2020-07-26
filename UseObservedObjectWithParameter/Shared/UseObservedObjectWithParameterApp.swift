//
//  UseObservedObjectWithParameterApp.swift
//  Shared
//
//  Created by 能登 要 on 2020/07/27.
//

import SwiftUI

@main
struct UseObservedObjectWithParameterApp: App {
    @StateObject var fooManager = FooManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView(event: self.fooManager.event)
                .environmentObject(self.fooManager)
        }
    }
}

struct UseObservedObjectWithParameterApp_Previews: PreviewProvider {
    static var fooManager = FooManager()

    static var previews: some View {
        ContentView(event: Self.fooManager.event)
            .environmentObject(Self.fooManager)
    }
}
