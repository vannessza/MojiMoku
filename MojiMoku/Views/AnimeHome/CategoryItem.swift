//
//  CategoryItem.swift
//  MojiMoku
//
//  Created by Vanness Anthony on 05/06/22.
//

import SwiftUI

struct CategoryItem: View {
    var animeCharacter: AnimeCharacter
    
    var body: some View {
        VStack(alignment: .center){
            RoundedCorners(color: .blue, tl: 0, tr: 0, bl: 30, br: 30)
                .offset()
                .frame(width: 250,height: 250)
                .offset(y:170)
            CircleImage(image: animeCharacter.image)
                .scaleEffect(0.8)
                .offset(y:-190)
            VStack(alignment:.center) {
                Text(animeCharacter.name)
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                Text(animeCharacter.origin).foregroundColor(.purple)
                    .font(.title3)
                    .bold()
            }.frame(width:220)
                .offset(y:-200)
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(animeCharacter: ModelData().animeChars[0])
    }
}
