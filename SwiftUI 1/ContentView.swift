//
//  ContentView.swift
//  SwiftUI 1
//
//  Created by Yatharth on 10/6/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            List {
                NavigationLink(destination: DetailedView(currentCategory: .burger)){
                    CategoryView(imageName: "burger", categoryName: "BURGER")
                }
                
                NavigationLink(destination: DetailedView(currentCategory: .pizza)){
                    CategoryView(imageName: "pizza", categoryName: "PIZZA")
                }
                
                NavigationLink(destination: DetailedView(currentCategory: .pasta)){
                    CategoryView(imageName: "pasta", categoryName: "PASTA")
                }
                
                NavigationLink(destination: DetailedView(currentCategory: .dessert)){
                    CategoryView(imageName: "dessert", categoryName: "DESSERT")
                }
                
            }
            .padding(.horizontal,38)
            .navigationBarTitle("Food Delivery")
        }
        
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CategoryView: View {
    var imageName:String
    var categoryName:String
    
    var body: some View {
        ZStack {
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 150)
                .clipped()
                .cornerRadius(20.0)
            Text(categoryName)
                .font(.custom("HelveticaNeueMedium", size: 50))
                .foregroundColor(.white)
        }
        .padding(.top,5)
        .padding(.bottom,15)
    }
}
