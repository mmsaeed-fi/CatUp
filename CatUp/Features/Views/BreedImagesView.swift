//
//  BreedImagesView.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import SwiftUI

struct BreedImagesView: View {
    
    let catimage: [BreedImage]
    
    var body: some View {
        GeometryReader { proxy in
            TabView{
                ForEach(catimage, id:\.url) { items in
                    AsyncImage(url: URL(string: items.url ?? "")){ phase in
                        if let image = phase.image {
                            image.resizable()
                                .scaledToFill()
                                .overlay(Color.black.opacity(0.3))
                                .tag(items)
                        } else if phase.error != nil {
                            
                            Text(phase.error?.localizedDescription ?? "error")
                                .foregroundColor(Color.gray)
                                .frame(width: 100, height: 100)
                        } else {
                            ProgressView()
                                .frame(width: 100, height: 100)
                        }
                    }
                }
            }.tabViewStyle(PageTabViewStyle())
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding()
                .frame(width: proxy.size.width, height: proxy.size.height)
        }
    }
}

struct BreedImagesView_Previews: PreviewProvider {
    static var previews: some View {
        BreedImagesView(catimage: Breed.dummyImageData)
    }
}
