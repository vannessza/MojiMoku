//
//  AnimeRow.swift
//  MojiMoku
//
//  Created by Vanness Anthony on 04/06/22.
//

import SwiftUI

struct AnimeRow: View {
    var animeCharacter: AnimeCharacter
    
    var body: some View {
        HStack(alignment:.bottom) {
            VStack(alignment:.leading){
                Text(animeCharacter.name).font(.title3)
                    .padding(.horizontal,50)
                Text(animeCharacter.origin).foregroundColor(.purple
                )
                .padding(.horizontal,50)
            }
            .frame(width: 290,height: 60, alignment: .leading)
            .background(RoundedCorners(color: .blue, tl: 0, tr: 0, bl: 0, br: 30))
            .offset(x:100)
            Spacer()
            CircleImage(image: animeCharacter.image)
                .offset(x:-520)
                .scaleEffect(0.50)
                .frame(width: 100, height:100)
        }.padding(.bottom,30)
            .offset(x:-40)
        
    }
}

struct AnimeRow_Previews: PreviewProvider {
    static var animeChars = ModelData().animeChars
    static var previews: some View {
        Group{
            AnimeRow(animeCharacter: animeChars[2])
            AnimeRow(animeCharacter: animeChars[1])
        }.previewLayout(.fixed(width: 400, height: 150))
    }
}
