//
//  AnimeList.swift
//  MojiMoku
//
//  Created by Vanness Anthony on 05/06/22.
//

import SwiftUI

struct AnimeList: View {
    @EnvironmentObject var modelData: ModelData
    
    var filteredAnimeChars:
    [AnimeCharacter]{
        modelData.animeChars.filter{
            animeChar in (animeChar.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredAnimeChars){
                    animeChar in NavigationLink{
                        AnimeDetail(animeCharacter: animeChar)
                    }label: {
                        AnimeRow(animeCharacter: animeChar)
                }
                }
            }.navigationTitle("Favorite Characters")
        }
    }
}

struct AnimeList_Previews: PreviewProvider {
    static var previews: some View {
        AnimeList().environmentObject(ModelData())
    }
}
