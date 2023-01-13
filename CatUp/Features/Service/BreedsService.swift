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
        let baseService : BaseServiceProtocol = BaseService()
        let parameters :[String:String] = [
            "limit" : "10",
            "breed_ids": imageReferenceID
        ]
        let reqObj : RequestObject = RequestObject(path: ApiConstants.breedImagesPath, httpMethod: HTTPMethod.get, parameters: parameters, headers: [ApiConstants.headerKey:ApiConstants.headerToken])
        return try await baseService.request(with: reqObj, decoder: JSONDecoder())
    }
    
    func fetchCatBreeds() async throws -> [Breed] {
        let baseService : BaseServiceProtocol = BaseService()
        let parameters = [String:String]()
        let reqObj : RequestObject = RequestObject(path: ApiConstants.breedsPath, httpMethod: HTTPMethod.get, parameters: parameters, headers: [ApiConstants.headerKey:ApiConstants.headerToken])
        return try await baseService.request(with: reqObj, decoder: JSONDecoder())
    }
}
