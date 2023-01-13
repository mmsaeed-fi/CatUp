//
//  Breed.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import Foundation

/*
 "weight":{
 "imperial":"7 - 10",
 "metric":"3 - 5"
 },
 "id":"abys",
 "name":"Abyssinian",
 "cfa_url":"http://cfa.org/Breeds/BreedsAB/Abyssinian.aspx",
 "vetstreet_url":"http://www.vetstreet.com/cats/abyssinian",
 "vcahospitals_url":"https://vcahospitals.com/know-your-pet/cat-breeds/abyssinian",
 "temperament":"Active, Energetic, Independent, Intelligent, Gentle",
 "origin":"Egypt",
 "country_codes":"EG",
 "country_code":"EG",
 "description":"The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
 "life_span":"14 - 15",
 "indoor":0,
 "lap":1,
 "alt_names":"",
 "adaptability":5,
 "affection_level":5,
 "child_friendly":3,
 "dog_friendly":4,
 "energy_level":5,
 "grooming":1,
 "health_issues":2,
 "intelligence":5,
 "shedding_level":2,
 "social_needs":5,
 "stranger_friendly":5,
 "vocalisation":1,
 "experimental":0,
 "hairless":0,
 "natural":1,
 "rare":0,
 "rex":0,
 "suppressed_tail":0,
 "short_legs":0,
 "wikipedia_url":"https://en.wikipedia.org/wiki/Abyssinian_(cat)",
 "hypoallergenic":0,
 "reference_image_id":"0XYvRd7oD",
 "image":{
 "id":"0XYvRd7oD",
 "width":1204,
 "height":1445,
 "url":"https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"
 }
 */

struct Breed: Codable {
    let weight: BreedWeight
    let id, name: String
    let temperament, origin, countryCodes, countryCode: String
    let description, lifeSpan: String
    let indoor: Int
    let lap: Int?
    let altNames: String?
    let adaptability, affectionLevel, childFriendly, dogFriendly: Int
    let energyLevel, grooming, healthIssues, intelligence: Int
    let sheddingLevel, socialNeeds, strangerFriendly, vocalisation: Int
    let isExperimental, isHairless, isNatural, isRare, isRex, hasSuppressedTail, hasShortLegs: Int
    let wikipediaURL: String?
    let hypoallergenic: Int
    //  let referenceImageID: String
    let image: BreedImage?

    enum CodingKeys: String, CodingKey {
        case weight, id, name
        case temperament, origin
        case countryCodes = "country_codes"
        case countryCode = "country_code"
        case description
        case lifeSpan = "life_span"
        case indoor, lap
        case altNames = "alt_names"
        case adaptability
        case affectionLevel = "affection_level"
        case childFriendly = "child_friendly"
        case dogFriendly = "dog_friendly"
        case energyLevel = "energy_level"
        case grooming
        case healthIssues = "health_issues"
        case intelligence
        case sheddingLevel = "shedding_level"
        case socialNeeds = "social_needs"
        case strangerFriendly = "stranger_friendly"
        case vocalisation
        case isExperimental = "experimental"
        case isHairless = "hairless"
        case isNatural = "natural"
        case isRare = "rare"
        case isRex = "rex"
        case hasSuppressedTail = "suppressed_tail"
        case hasShortLegs = "short_legs"
        case wikipediaURL = "wikipedia_url"
        case hypoallergenic
        case image
      //  case referenceImageID = "reference_image_id"
       // case image
    }
}

struct BreedWeight: Codable {
    let imperial, metric: String
}

extension Breed {
    
    static let dummyData: [Breed] = [
        Breed(weight: BreedWeight(imperial: "7 - 10", metric: "3 - 5"), id: "abys", name: "Abyssinian", temperament: "Active, Energetic, Independent, Intelligent, Gentle", origin: "Egypt", countryCodes: "", countryCode: "EG", description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.", lifeSpan: "14 - 15", indoor: 0, lap: 0, altNames: "", adaptability: 5, affectionLevel: 5, childFriendly: 3, dogFriendly: 4, energyLevel: 5, grooming: 1, healthIssues: 2, intelligence: 5, sheddingLevel: 2, socialNeeds: 5, strangerFriendly: 5, vocalisation: 3, isExperimental: 5, isHairless: 0, isNatural: 0, isRare: 0, isRex: 0, hasSuppressedTail: 0, hasShortLegs: 1, wikipediaURL: "https://en.wikipedia.org/wiki/Abyssinian_(cat)", hypoallergenic: 0, image: BreedImage(id: "0XYvRd7oD", width: 1204, height: 1445, url: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg")),
        Breed(weight: BreedWeight(imperial: "7 - 10", metric: "3 - 5"), id: "abys", name: "Abyssinian", temperament: "Active, Energetic, Independent, Intelligent, Gentle", origin: "Egypt", countryCodes: "", countryCode: "EG", description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.", lifeSpan: "14 - 15", indoor: 0, lap: 0, altNames: "", adaptability: 5, affectionLevel: 5, childFriendly: 3, dogFriendly: 4, energyLevel: 5, grooming: 1, healthIssues: 2, intelligence: 5, sheddingLevel: 2, socialNeeds: 5, strangerFriendly: 5, vocalisation: 3, isExperimental: 5, isHairless: 0, isNatural: 2, isRare: 0, isRex: 0, hasSuppressedTail: 0, hasShortLegs: 1, wikipediaURL: "https://en.wikipedia.org/wiki/Abyssinian_(cat)", hypoallergenic: 0,image:BreedImage(id: "0XYvRd7oD", width: 1204, height: 1445, url: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg")),
        Breed(weight: BreedWeight(imperial: "7 - 10", metric: "3 - 5"), id: "abys", name: "Abyssinian", temperament: "Active, Energetic, Independent, Intelligent, Gentle", origin: "Egypt", countryCodes: "", countryCode: "EG", description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.", lifeSpan: "14 - 15", indoor: 0, lap: 0, altNames: "", adaptability: 5, affectionLevel: 5, childFriendly: 3, dogFriendly: 4, energyLevel: 5, grooming: 1, healthIssues: 2, intelligence: 5, sheddingLevel: 2, socialNeeds: 5, strangerFriendly: 5, vocalisation: 3, isExperimental: 5, isHairless: 0, isNatural: 2, isRare: 0, isRex: 0, hasSuppressedTail: 0, hasShortLegs: 1, wikipediaURL: "https://en.wikipedia.org/wiki/Abyssinian_(cat)", hypoallergenic: 0,image: BreedImage(id: "0XYvRd7oD", width: 1204, height: 1445, url: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg")),
        Breed(weight: BreedWeight(imperial: "7 - 10", metric: "3 - 5"), id: "abys", name: "Abyssinian", temperament: "Active, Energetic, Independent, Intelligent, Gentle", origin: "Egypt", countryCodes: "", countryCode: "EG", description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.", lifeSpan: "14 - 15", indoor: 0, lap: 0, altNames: "", adaptability: 5, affectionLevel: 5, childFriendly: 3, dogFriendly: 4, energyLevel: 5, grooming: 1, healthIssues: 2, intelligence: 5, sheddingLevel: 2, socialNeeds: 5, strangerFriendly: 5, vocalisation: 3, isExperimental: 5, isHairless: 0, isNatural: 2, isRare: 0, isRex: 0, hasSuppressedTail: 0, hasShortLegs: 1, wikipediaURL: "https://en.wikipedia.org/wiki/Abyssinian_(cat)", hypoallergenic: 0,image: BreedImage(id: "0XYvRd7oD", width: 1204, height: 1445, url: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"))
    ]
    
    static let dummyImageData: [BreedImage] = [
        BreedImage(id: "0XYvRd7oD", width: 1204, height: 1445, url: "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg")
    ]
}
