//
//  ReceipDetailViewModel.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 19.02.24.
//

import Foundation


class ReceipDetailViewModel: ObservableObject{
    
    @Published var title: String
    @Published var id: Int
    @Published var image: String
    
    
    init(receip: Receip){
        self.id = receip.id
        self.title = receip.title
        self.image = receip.image
    }
    
}
