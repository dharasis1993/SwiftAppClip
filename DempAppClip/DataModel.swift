//
//  DataModel.swift
//  DempAppClip
//
//  Created by dharasis behera on 28/04/21.
//

import Foundation
import SwiftUI

struct Entity: Decodable {
    var entity: [EntityItem]
}

struct EntityItem: Decodable, Identifiable {
    var name: String
    var id: Int
    var description: String
    var imageName: String
    var category: String
    var quantity: Int
    var image: Image{
        Image(imageName)
    }
}

