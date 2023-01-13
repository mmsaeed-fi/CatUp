//
//  BreedImage.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import Foundation

// Issue with decoding the image object -  TODO: fix
struct BreedImage : Codable, Hashable {
    let id: String?
    let width: Int?
    let height: Int?
    let url: String?
}
