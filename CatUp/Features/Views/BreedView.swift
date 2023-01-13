//
//  BreedView.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import SwiftUI

struct BreedView: View {
    
    let item: Breed
    let imageItem :BreedImage
    
    func countryFlag(countryCode: String) -> String {
      return String(String.UnicodeScalarView(
         countryCode.unicodeScalars.compactMap(
           { UnicodeScalar(127397 + $0.value) })))
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            AsyncImage(url: URL(string: imageItem.url ?? "")){ phase in
                if let image = phase.image {
                    image.resizable()
                        .frame(width: 70, height: 70)
                        .mask(Circle())
                        .padding(12)
                        .background(Color(UIColor.systemBackground).opacity(0.3))
                        .mask(Circle())
                    
                 } else if phase.error != nil {
                     
                     Text(phase.error?.localizedDescription ?? "error")
                         .foregroundColor(Color.gray)
                         .frame(width: 100, height: 100)
                 } else {
                    ProgressView()
                         .frame(width: 100, height: 100)
                 }
            }
                
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text(item.origin)
                        .font(.caption.weight(.medium))
                        .foregroundStyle(.secondary)
                    Text(countryFlag(countryCode:item.countryCode))
                        
                }
                Text(item.name)
                    .fontWeight(.semibold)
                Text(item.temperament)
                    .font(.caption.weight(.medium))
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
    }
}

struct BreedView_Previews: PreviewProvider {
    static var previews: some View {
        BreedView(item: Breed.dummyData.first!, imageItem: Breed.dummyImageData.first!)
    }
}
