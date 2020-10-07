//
//  DetailedView.swift
//  SwiftUI 1
//
//  Created by Yatharth on 10/6/20.
//

import SwiftUI

struct DetailedView: View {
    var currentCategory : Categories
    var body: some View {

        List(filterData(by: currentCategory)){ food in
            DetailedRow(food: food)
            
        }
        .navigationBarTitle(Text(categoryString(for: currentCategory)), displayMode: .automatic)
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(currentCategory: .burger)
    }
}
