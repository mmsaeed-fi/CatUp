//
//  BreedImagesViewModel.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import Foundation

protocol BreedImagesViewModel: ObservableObject {
    func getBreedsImages(breedID: String) async
}

@MainActor
final class BreedImagesViewModelImplementation: BreedImagesViewModel{


    @Published private(set) var breedimages: [BreedImage] = []
    
    private let service: BreedsService
    
    init(service: BreedsService) {
        self.service = service
    }
    
    func getBreedsImages(breedID : String) async {
        do {
            self.breedimages = try await service.fetchCatBreedIImageUrl(imageReferenceID: breedID)
            print("Mustafa - images \(self.breedimages )")
        } catch {
            print(error)
        }
    }
    
}
