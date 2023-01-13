//
//  HTTPURLResponseExtensions.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import Foundation

extension HTTPURLResponse {
    var httpStatus: HTTPStatus? {
        HTTPStatus(rawValue: statusCode)
    }
}
