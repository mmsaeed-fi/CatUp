//
//  BreedTests.swift
//  CatUpTests
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import XCTest
@testable import CatUp

final class BreedTests: XCTestCase {
    
    var jsonTestBreed : [Breed]!
    func testFetchBreedsAsync() async throws {
        let BreedsVM = await BreedsViewModelImplementation(service: BreedsServiceImplmentation())
        let breeds: [Breed] = try await BreedsVM.service.fetchCatBreeds()
        
        XCTAssertTrue(breeds.count > 0)
        
    }
    
    func testParsingJSON() {
        let url = URL(string: "https://api.thecatapi.com/v1/breeds?limit=1")!
        let json = try? Data(contentsOf: url)
        jsonTestBreed = try? JSONDecoder().decode([Breed].self, from: json!)

        
        XCTAssertNotNil(jsonTestBreed)
    }
    
    
    
}
