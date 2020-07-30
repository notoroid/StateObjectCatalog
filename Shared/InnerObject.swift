//
//  InnerObject.swift
//  
//
//  Created by 能登 要 on 2020/07/26.
//

import Combine

class InnerObject: ObservableObject {
    init() {
        print("InnerObject: init call.")
    }
    
    deinit {
        print("InnerObject: deinit call.")
    }
}
