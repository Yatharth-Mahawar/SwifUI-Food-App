//
//  Food.swift
//  SwiftUI 1
//
//  Created by Yatharth on 10/6/20.
//

import SwiftUI

class Food: Identifiable {
    var title: String
    var price: Double
    var category: Categories
    var id: Int
    
    init(title: String,price: Double,category: Categories,id: Int) {
        self.title = title
        self.price = price
        self.category = category
        self.id = id
    }
}
