//
//  BreedDetailsScreen.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import SwiftUI
import SafariServices

struct BreedDetailScreen: View {
   
    
    @StateObject private var catBreedImagesViewModel = BreedImagesViewModelImplementation(service: BreedsServiceImplmentation())
    
    @State private var rating: Int?
    @State var showSafari = false
    
    let breed: Breed
    
    var body: some View {
        
        VStack{
            cover
            ScrollView{
                content
                    .padding(.vertical, 10)
            }
            .coordinateSpace(name: "scroll")
            .background(Color("Background"))
            .ignoresSafeArea()
        }
        
    }
    var cover: some View {
        VStack {
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 300)
        .overlay(
            BreedImagesView(catimage: catBreedImagesViewModel.breedimages)
        )
        .task {
            await catBreedImagesViewModel.getBreedsImages(breedID: breed.id)
        }
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(breed.name)
                .font(.title).bold()
            Text("Description")
                .font(.title3).fontWeight(.medium)
            Text(breed.description)
            VStack(alignment: .leading, spacing: 10) {
                
                RatingView(rating: breed.adaptability, ratingHeader: "Adaptability")
                RatingView(rating: breed.affectionLevel, ratingHeader: "Affection")
                RatingView(rating: breed.childFriendly, ratingHeader: "Child Friendly")
                RatingView(rating: breed.dogFriendly, ratingHeader: "Dog Friendly")
                RatingView(rating: breed.energyLevel, ratingHeader: "Energy Level")
                RatingView(rating: breed.intelligence, ratingHeader: "Intelligence")
                RatingView(rating: breed.sheddingLevel, ratingHeader: "Shedding Level")
                RatingView(rating: breed.socialNeeds, ratingHeader: "Social Needs")
                RatingView(rating: breed.strangerFriendly, ratingHeader: "Stranger Friendly")
                
                Divider()
                    .foregroundColor(.secondary)
                
            }
                .padding(20)
                .background(
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .backgroundStyle(cornerRadius: 30)
                        
                )
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding(20)
                .offset(y: 5)
            
            HStack {
                Spacer()
                Button(action: {
                    showSafari.toggle()
                }) {
                        Text("Wikipedia")
                        .frame(width: 100, height: 40, alignment: .center)
                        .font(.system(size:18))
                        .padding()
                        .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.white, lineWidth: 2)
                        )
                }
                .background(Color.yellow)
                .cornerRadius(25)
                .sheet(isPresented: $showSafari) {
                    let wikipediaUrl = URL(string: breed.wikipediaURL ?? "")
                    SafariWrapper(url:wikipediaUrl!)
                }
               
                Spacer()
            }
            
        }
        .padding(20)
    }
}

struct BreedDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        BreedDetailScreen(breed: Breed.dummyData.first!)
    }
}
