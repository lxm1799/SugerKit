//
//  +Bool.swift
// SugerKit
//

//

import UIKit

public extension Bool {
    
    var int: Int {
        return self ? 1 : 0
    }
    
    var string: String {
        return self ? "true" : "false"
    }
    
    var ocString: String {
        return self ? "YES" : "NO"
    }
    
}
