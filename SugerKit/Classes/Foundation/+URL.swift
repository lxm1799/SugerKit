//
//  +URL.swift
//  Alamofire
//


import UIKit

extension URL {
    
    // 拼接url参数
    func appendingQueryItem(name: String, value: String?) -> URL {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: false)
        if components?.queryItems == nil {
            components?.queryItems = []
        }
        components?.queryItems?.append(URLQueryItem(name: name, value: value))
        return components?.url ?? self
    }
    
}
