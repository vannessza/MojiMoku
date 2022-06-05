//
//  AnimeCharacter.swift
//  MojiMoku
//
//  Created by Vanness Anthony on 04/06/22.
//

import Foundation
import SwiftUI

struct AnimeCharacter: Hashable, Codable, Identifiable{
    var id: Int
    var anime_id: Int
    var anime_image: String
    var character_image: String
    var origin: String
    var gender: String
    var name: String
    var desc: String
    var isFavorite: Bool
    
    var image: Image {
        Image(character_image)
    }
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case discover = "Discover"
        case newly = "Newly Added"
        case waifu = "Waifuable"
        case popular = "Most Popular"
    }
}
