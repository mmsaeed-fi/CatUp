//
//  RatingView.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import SwiftUI

struct RatingView: View {
     
    var rating: Int?
    var ratingHeader : String?
    
    private func starType(index: Int) -> String {
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
   
    var body: some View {
        HStack {
            Text(ratingHeader ?? "")
                .font(.footnote).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.primary.opacity(0.7))
            ForEach(1...5, id:\.self) { index in
                Image(systemName: self.starType(index: index))
                    .foregroundColor(Color.orange)
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 4, ratingHeader: "Adaptability")
    }
}
