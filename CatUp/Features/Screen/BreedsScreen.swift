//
//  BreedsScreen.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import SwiftUI

struct BreedsScreen: View {
    
    @StateObject private var catBreedsViewModel = BreedsViewModelImplementation(service: BreedsServiceImplmentation()
    )
    
    var body: some View {
        List{
            ForEach(catBreedsViewModel.breeds, id:\.id) { item in
                BreedView(item: item)
            }
        }.task {
            await catBreedsViewModel.getCatBreeds()
        }
    }
}
    
struct BreedsScreen_Previews: PreviewProvider {
    static var previews: some View {
        BreedsScreen()
    }
}
