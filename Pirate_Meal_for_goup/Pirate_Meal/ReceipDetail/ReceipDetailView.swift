//
//  ReceipDetailView.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 19.02.24.
//

//open for group

import SwiftUI

struct ReceipDetailView: View {
    
    @ObservedObject var vm: ReceipDetailViewModel
    
    var body: some View {
        VStack{
            Spacer()
            AsyncImage(url: URL(string: vm.image)){image in
                image
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(4)
                    .background(LinearGradient(colors: [.yellow, .gray], startPoint: .bottomLeading, endPoint: .topTrailing))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }placeholder: {
                ProgressView()
            }
            
            Spacer()
            Text(vm.title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            Spacer()
            
            
        }
    }
}

#Preview {
    ReceipDetailView(vm: ReceipDetailViewModel(receip:
                                                Receip(id: 716429, title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs", image: "https://spoonacular.com/recipeImages/716429-312x231.jpg")
                                              ))
}
