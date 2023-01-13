//
//  BreedsService.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import Foundation

protocol BreedsService {
    func fetchCatBreeds() async throws -> [Breed]
    func fetchCatBreedIImageUrl(imageReferenceID: String) async throws -> [BreedImage]
}

final class BreedsServiceImplmentation: BreedsService {
    
    func fetchCatBreedIImageUrl(imageReferenceID: String) async throws -> [BreedImage] {
        let url = URL(string: "https://api.thecatapi.com/v1/images/search?limit=10&breed_ids=".appending(imageReferenceID))!
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        return try decoder.decode([BreedImage].self, from: data)
    }
    
    func fetchCatBreeds() async throws -> [Breed] {
        let baseService : BaseServiceProtocol = BaseService()
        let parameters = [String:String]()
        let reqObj : RequestObject = RequestObject(path: ApiConstants.breedsPath, httpMethod: HTTPMethod.get, parameters: parameters, headers: [ApiConstants.headerKey:ApiConstants.headerToken])
        return try await baseService.request(with: reqObj, decoder: JSONDecoder())
    }
}
