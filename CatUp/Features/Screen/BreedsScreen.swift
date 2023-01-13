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
    
    @State private var searchText: String = ""
    
    var filteredBreeds: [Breed] {
        if searchText.count == 0 {
          return catBreedsViewModel.breeds
        } else {
            return catBreedsViewModel.breeds.filter { $0.name.contains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List{
                    ForEach(catBreedsViewModel.breeds, id:\.id) { item in
                        NavigationLink{
                            BreedDetailScreen(breed: item)
                        } label: {
                            BreedView(item: item, imageItem: item.image ?? BreedImage(id: "", width: 70, height: 70, url: "catImage"))
                        }
                        
                    }
                    .padding(20)
                    .backgroundStyle(.ultraThinMaterial)
                }
                .task {
                    await catBreedsViewModel.getCatBreeds()
                
                }
            }
        }
        .searchable(text: $searchText)
    }
}
    
struct BreedsScreen_Previews: PreviewProvider {
    static var previews: some View {
        BreedsScreen()
    }
}
