//
//  BreedView.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import SwiftUI

struct BreedView: View {
    
    let item: Breed
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(item.image.url)
                .resizable()
                .frame(width: 36, height: 36)
                .mask(Circle())
                .padding(12)
                .background(Color(UIColor.systemBackground).opacity(0.3))
                .mask(Circle())
            VStack(alignment: .leading, spacing: 8) {
                Text(item.origin)
                    .font(.caption.weight(.medium))
                    .foregroundStyle(.secondary)
                Text(item.name)
                    .fontWeight(.semibold)
                Text(item.weight.metric)
                    .font(.caption.weight(.medium))
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
    }
}

struct BreedView_Previews: PreviewProvider {
    static var previews: some View {
        BreedView(item: Breed.dummyData.first!)
    }
}
