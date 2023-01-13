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
        let baseService : BaseServiceProtocol = BaseService()
        let reqObj : RequestObject = RequestObject(path: ApiConstants.breedsPath, httpMethod: HTTPMethod.get, parameters: ["":""], headers: [ApiConstants.headerKey:ApiConstants.headerToken])
        return try await baseService.request(with: reqObj, decoder: JSONDecoder())
    }
}
