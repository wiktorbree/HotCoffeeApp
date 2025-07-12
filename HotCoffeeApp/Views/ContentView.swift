//
//  ContentView.swift
//  HotCoffeeApp
//
//  Created by Wiktor Bramer on 01/07/2025.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @ObservedObject var orderListVM: OrderListViewModel
    @State private var isPresented: Bool = false
    
    init() {
        self.orderListVM = OrderListViewModel()
    }
    
    private func delete(at offsets: IndexSet) {
        for index in offsets {
            let orderToDelete = orderListVM.orders[index]
            orderListVM.deleteOrder(orderToDelete)
        }
    }
    
    var body: some View {
        
        NavigationStack{
            
            List {
                ForEach(orderListVM.orders, id: \.name) { order in
                    HStack {
                        Image(order.type)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        
                        Text(order.name)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.leading, 10)
                    }
                }.onDelete(perform: delete)
            }
            .sheet(isPresented: $isPresented, onDismiss: {
                orderListVM.fetchAllOrders()
            }, content: {
                AddOrderView(isPresented: $isPresented)
            })
            .navigationTitle(Text("Orders"))
            .navigationBarItems(trailing: Button("Add New Order") {
                isPresented.toggle()
            })
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
