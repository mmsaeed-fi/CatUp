//
//  URLComponentsExtension.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import Foundation

extension URLComponents {
    mutating func setQueryItems(with parameters: [String: String]) {
        queryItems = parameters.map { URLQueryItem(name: $0.key, value: $0.value) }
    }
}
