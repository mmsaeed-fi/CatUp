//
//  TagView.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import SwiftUI

struct TagView: View {
    
    let item: Breed
    
    var body: some View {
        
        if item.isExperimental > 0 {
            Text("Experimental")
                .frame(width: 100, height: 25, alignment: .center)
                .font(.system(size:12))
                .padding()
                .foregroundColor(Color.black)
                .background(Color.green)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.green, lineWidth: 2)
                )
        } else {
            Text("Experimental")
                .frame(width: 100, height: 25, alignment: .center)
                .font(.system(size:12))
                .padding()
                .foregroundColor(Color.black)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray, lineWidth: 2)
                )
        }
        
    }
    
    func addText(tagVlaue: String){}
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(item: Breed.dummyData.first!)
    }
}
