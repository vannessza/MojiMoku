//
//  CategoryRow.swift
//  MojiMoku
//
//  Created by Vanness Anthony on 05/06/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [AnimeCharacter]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .foregroundColor(.black)
                .font(.headline)
                .bold()
                .padding(.leading, 10)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 0){
                    ForEach(items){
                        animeCharacter in
                        NavigationLink{
                            AnimeDetail(animeCharacter: animeCharacter)
                        }label: {
                            CategoryItem(animeCharacter: animeCharacter)
                        }
                        .scaleEffect(0.5)
                        .frame(width:150, height: 200)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var animeChars = ModelData().animeChars
    static var previews: some View {
        CategoryRow(
            categoryName: animeChars[0].category.rawValue, items: Array(animeChars.prefix(4))
        )
    }
}
