//
//  DetailedRow.swift
//  SwiftUI 1
//
//  Created by Yatharth on 10/6/20.
//

import SwiftUI

struct DetailedRow: View {
    var food : Food
    var body: some View {

        HStack {
            VStack(alignment: .leading) {
                Text(food.title)
                    .font(.headline)
                    .padding(.top,10)
                Text("\(food.price,specifier: "%2.2f")")
                    .font(.caption)
            }
            Spacer()
            Button(action:{print("\(food.title) Order Recieved")}) {
                Text("ORDER")
            }
            .frame(width: 80, height: 50)
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(15)
        }
        .padding(20)
    }
}

struct DetailedRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailedRow(food: foodData[0])
    }
}
