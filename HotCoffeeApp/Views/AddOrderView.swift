//
//  AddOrderView.swift
//  HotCoffeeApp
//
//  Created by Wiktor Bramer on 01/07/2025.
//

import SwiftUI

struct AddOrderView: View {
    
    @Binding var isPresented: Bool
    @State var addOrderVM: AddOrderViewModel = AddOrderViewModel()
    
    var body: some View {
        
        NavigationStack {
            Group {
                VStack {
                    
                    TextField("Enter name", text: self.$addOrderVM.name)
                    
                    Picker(selection: self.$addOrderVM.type, label: Text("")) {
                        Text("Cappuccino").tag("cap")
                        Text("Regular").tag("reg")
                        Text("Espresso").tag("esp")
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Button("Place Order") {
                        self.addOrderVM.saveOrder()
                        self.isPresented = false
                    }
                    .padding(8)
                    .foregroundStyle(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                    
                }
            }.padding(25)
                .navigationTitle("Add Order")
        }
    }
}

#Preview {
    AddOrderView(isPresented: .constant(false))
}
