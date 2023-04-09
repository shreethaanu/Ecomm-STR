//
//  ContentView.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 16/09/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var headerButtons = ["All", "Men", "Women", "Kids"]
    let productsPublisher = webservice().getProducts()
    var body: some View {
        NavigationView {
                VStack {
                    topbar()
                        .frame(height: 75.0)
                    ScrollView(.vertical, showsIndicators: false) {
                    HStack {
                        Text("Find Your Style")
                            .multilineTextAlignment(.leading)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .padding(.leading)
                        Spacer()
                    }
                        
                        ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(0..<headerButtons.count) { i in
                                Button(headerButtons[i]) {
                                   
                                }
                                .font(.body)
                                .frame(width: 80, height: 40)
                                .border(.gray)
                                .cornerRadius(5)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                            }
                        }
                        .padding(.leading)
                    }
                    .scrollIndicators(.hidden, axes: .horizontal)
                    bannerView(myItems: homeDataModel(name: "Casual Dress", Price: "€ 39.99"))
                        productsCollectionCarousal(subtitle: "Most Popular")
                        Image("")
                        productsCollectionCarousal(subtitle: "New Arrivals")
                    Spacer ()
                }
            }
        }
    }
    func fetchProducts(){

        let productsByIdPublisher = productsPublisher
            .map { products in
                products.reduce(into: [:]) { result, product in
                    result[product.id] = product
                }
            }

        let productsByIdSubscription = productsByIdPublisher
            .sink(
                receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        print("Finished receiving products")
                    case .failure(let error):
                        print("Error receiving products: \(error.localizedDescription)")
                    }
                },
                receiveValue: { productsById in
                    print("Products by ID:")
                    print(productsById)
                }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
