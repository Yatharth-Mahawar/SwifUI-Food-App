//
//  Helper.swift
//  SwiftUI 1
//
//  Created by Yatharth on 10/6/20.
//

import SwiftUI

enum Categories {
    case burger
    case pizza
    case pasta
    case dessert
}

func filterData(by category:Categories) -> [Food] {
    var filterArray = [Food]()
    for food in foodData {
        if food.category == category {
            filterArray.append(food)
        }
    }
    return filterArray
}

func categoryString(for category: Categories) -> String {
    switch category {
    case .burger:
        return "Burger"
    case .pizza:
        return "Pizza"
    case .pasta:
        return "Pasta"
    case .dessert:
        return "Desserts"
    }
}
