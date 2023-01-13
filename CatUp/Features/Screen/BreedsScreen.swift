//
//  BreedsScreen.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import SwiftUI

struct BreedsScreen: View {
    var body: some View {
        List{
            ForEach(Breed.dummyData, id:\.id) { item in
                BreedView(item: item)
            }
        }
    }
}

struct BreedsScreen_Previews: PreviewProvider {
    static var previews: some View {
        BreedsScreen()
    }
}
