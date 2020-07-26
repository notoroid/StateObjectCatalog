//
//  UseObservedObjectApp.swift
//  Shared
//
//  Created by 能登 要 on 2020/07/26.
//

import SwiftUI

@main
struct UseObservedObjectApp: App {
    @StateObject var fooManager = FooManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(self.fooManager)
        }
    }
}

struct UseObservedObjectApp_Previews: PreviewProvider {
    static var fooManager = FooManager()

    static var previews: some View {
        ContentView()
            .environmentObject(Self.fooManager)
    }
}
