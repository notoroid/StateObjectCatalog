//
//  UseStateObjectToggleViewApp.swift
//  Shared
//
//  Created by 能登 要 on 2020/07/27.
//

import SwiftUI

@main
struct UseStateObjectToggleViewApp: App {
    @StateObject var fooManager = FooManager()
    
    var body: some Scene {
        WindowGroup {
            if self.fooManager.event {
                ContentView(event: true, innerObject: InnerObject())
                    .environmentObject(self.fooManager)
            } else {
                ContentView(event: true, innerObject: InnerObject())
                    .environmentObject(self.fooManager)
            }
        }
    }
}

struct UseStateObjectToggleViewAppp_Previews: PreviewProvider {
    static var fooManager = FooManager()

    static var previews: some View {
        ContentView(event: Self.fooManager.event, innerObject: InnerObject())
            .environmentObject(Self.fooManager)
    }
}
