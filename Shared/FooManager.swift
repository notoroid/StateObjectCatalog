//
//  FooManager.swift
//  
//
//  Created by 能登 要 on 2020/07/26.
//

import Foundation
import Combine

class FooManager: ObservableObject {
    @Published var event = true
    
    init() {
        print("FooManager: init call.")
    }
    
    deinit {
        print("FooManager: deinit call.")
    }
}
