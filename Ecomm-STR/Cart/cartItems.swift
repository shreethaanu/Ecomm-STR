//
//  cartItems.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 18/09/22.
//

import SwiftUI

struct cartItems: View {
    var body: some View {
        HStack {
            Image("str")
                .renderingMode(.original)
                .resizable()
                .frame(width: 190.0, height: 190.0)
            Spacer()
            VStack(alignment: .leading) {
                Text("Casual Jeans & Shoes")
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .padding(.bottom)
                Text("Size: M")
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                Text("€ 178.99")
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                HStack{
                    Button(action: {
                        print("button pressed")
                        
                    }) {
                        Image(systemName: "plus.square")
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.black)
                    }
                    Text("1")
                    Button(action: {
                        print("button pressed")
                    }) {
                        Image(systemName: "minus.square")
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.black)
                    }
                }
            }
            
            .padding(.trailing)
            Spacer()
        }
        .frame(height: 220.0)
    }
}

struct cartItems_Previews: PreviewProvider {
    static var previews: some View {
        cartItems()
    }
}
