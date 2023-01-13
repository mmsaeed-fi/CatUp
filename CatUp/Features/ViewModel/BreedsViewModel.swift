//
//  BreedsViewModel.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import Foundation

protocol BreedsViewModel: ObservableObject {
    func getCatBreeds() async
}

@MainActor
final class BreedsViewModelImplementation: BreedsViewModel{
    
    @Published private(set) var breeds: [Breed] = []
    
    private let service: BreedsService
    
    init(service: BreedsService) {
        self.service = service
    }
    
    func getCatBreeds() async {
        do {
            self.breeds = try await service.fetchCatBreeds()
            print(self.breeds)
        } catch {
            print(error)
        }
    }
    
}
