//
//  checkout.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 19/09/22.
//

import SwiftUI

struct checkout: View {
    @State var paymentsData = [1,2,3]
    var body: some View {
        VStack(){
            HStack {
                Text("Delivery Address")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                Spacer()
            }
            .padding(.top, 20.0)
            HStack {
                Image(systemName: "mappin.square.fill")
                    .resizable()
                    .frame(width: 60.0, height: 60.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading){
                    Text("20845 Oakridge Farm Lane")
                    Text("NewYork (NYC)")
                }
                .padding(.leading)
                Spacer(minLength: 15)
                Image(systemName: "chevron.right")
                    .renderingMode(.original)
                    .resizable()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: 15.0, maxHeight: 20.0)
                Spacer()
            }
            .padding(.leading)
            HStack {
                Text("Payment Method")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                Spacer()
            }
            .padding(.top)
                VStack(spacing: 20) {
                    ForEach(0..<paymentsData.count) { i in
                        paymentsItem()
                    }
                }
            NavigationLink(destination: orderSuccess()) {
                Text("Checkout")
                    .padding(.all, 20.0)
                    .frame(width: 300.0, height: 70.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
            }
            Spacer()
        }
    }
}

struct checkout_Previews: PreviewProvider {
    static var previews: some View {
        checkout()
    }
}
