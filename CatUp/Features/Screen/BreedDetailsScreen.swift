//
//  BreedDetailsScreen.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import SwiftUI

struct BreedDetailScreen: View {
    let breed: Breed
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text(breed.name)
                .font(.title3).fontWeight(.medium)
            Text("Description")
                .font(.title).bold()
            Text(breed.description)
        }
        .padding(20)
    }
}

struct BreedDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        BreedDetailScreen(breed: Breed.dummyData.first!)
    }
}
