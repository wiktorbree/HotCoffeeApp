//
//  AddOrderViewModel.swift
//  HotCoffeeApp
//
//  Created by Wiktor Bramer on 01/07/2025.
//

import Foundation

class AddOrderViewModel {
    
    var name: String = ""
    var type: String = ""
    
    func saveOrder() {
        CoreDataManager.shared.saveOrder(name: self.name, type: self.type)
    }
    
}
