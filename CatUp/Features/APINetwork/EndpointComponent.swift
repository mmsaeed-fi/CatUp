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
    
    var url: URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = ApiConstants.baseUrl
        components.path = path
        components.setQueryItems(with: queryItems)
        return components.url
    }
}
