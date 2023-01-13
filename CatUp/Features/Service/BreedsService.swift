//
//  BreedsService.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import Foundation

protocol BreedsService {
    func fetchCatBreeds() async throws -> [Breed]
}

final class BreedsServiceImplmentation: BreedsService {
    
    func fetchCatBreeds() async throws -> [Breed] {
        let dogURL = URL(string: "https://api.thecatapi.com/v1/breeds")!
        let (data, _) = try await URLSession.shared.data(from: dogURL)
        return try JSONDecoder().decode([Breed].self, from: data)
    }
}
