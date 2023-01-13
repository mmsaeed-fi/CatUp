//
//  EndpointComponent.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import Foundation

struct EndpointComponent {
    let path: String
    var queryItems: [String: String] = [:]
    
    let url: URL? = URL(string: "https://api.thecatapi.com/v1/breeds")
 
//TODO: Fix URL components issue not parsing url correctly
//    var url: URL? {
//        var components = URLComponents()
//        components.scheme = "https"
//        components.host = "api.thecatapi.com/v1"
//        components.path = path
//        components.setQueryItems(with: queryItems)
//        return components.url
//    }
}
