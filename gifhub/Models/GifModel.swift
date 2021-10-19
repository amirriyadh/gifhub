//
//  GifModel.swift
//  gifhub
//
//  Created by Amir Riyadh on 18/10/2021.
//

import Foundation

struct GifModel: Identifiable, Hashable {
    let id = UUID.init()
    let imageURL: String
}
