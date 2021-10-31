//
//  +Font.swift
//  SugerKit
//
//  Created by luckyBoy on 2021/10/31.
//

import Foundation
import UIKit


extension UIFont{
    private enum PingFangFontName: String {
        case Medium = "PingFangSC-Medium"
        case Regular = "PingFangSC-Regular"
        case Light = "PingFangSC-Light"
        case Semibold = "PingFangSC-Semibold"
        case Bold = "PingFangSC-Bold"
    }

    
    static func regular(_ size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size)
    }
    
    static func light(_ size: CGFloat) -> UIFont {
        return UIFont(name: PingFangFontName.Light.rawValue, size: size)!
    }
    
    static func medium(_ size: CGFloat) -> UIFont {
        return UIFont(name: PingFangFontName.Medium.rawValue, size: size)!
    }
    
    static func semiBold(_ size: CGFloat) -> UIFont {
        return UIFont(name: PingFangFontName.Semibold.rawValue, size: size)!
    }
    
    static func bold(_ size: CGFloat) -> UIFont {
        return UIFont.boldSystemFont(ofSize: size)
    }
}

