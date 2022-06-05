//
//  AnimeDetail.swift
//  MojiMoku
//
//  Created by Vanness Anthony on 04/06/22.
//

import SwiftUI

struct AnimeDetail: View {
    @EnvironmentObject var modelData: ModelData
    var animeCharacter: AnimeCharacter
    
    var animeIndex: Int{
        modelData.animeChars
            .firstIndex(where: {$0.id
                == animeCharacter.id })!
    }
    
    var body: some View {
        ScrollView{
            RoundedCorners(color: .purple, tl: 0, tr: 0, bl: 30, br: 30)
                .offset(y: -47)
                .frame(height: 250)
            
            CircleImage(image: animeCharacter.image)
                .offset(y:-150)
                .padding(.bottom, -130)
            FavoriteButton(isSet:$modelData.animeChars[animeIndex].isFavorite)
                .offset(y:-60)
                .padding(.bottom, 10)
            
            VStack(alignment: .leading){
                VStack(alignment: .center){
                    Text(animeCharacter.name).font(.title)
                        .bold()
                    Text(animeCharacter.origin).font(.title2).foregroundColor(.purple)
                    Divider()
                }
                Text("Description")
                    .font(.title3)
                    .foregroundColor(.purple)
                Text(animeCharacter.desc)
                
            }.padding()
                .offset(y:-70)
                
        }
    }
}

struct AnimeDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        AnimeDetail(animeCharacter: modelData.animeChars[3])
            .environmentObject(modelData)
    }
}
