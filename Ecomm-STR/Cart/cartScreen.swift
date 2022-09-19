//
//  cartScreen.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 18/09/22.
//

import SwiftUI

struct cartScreen: View {
    @State var cartItemsData = [1,2]
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 20) {
                ForEach(0..<cartItemsData.count) { i in
                    cartItems()
                        .frame(height: 220)
                }
                HStack(){
                    Text("Promo/Student Code or Vourchers")
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Button(action: {
                        print("button pressed")
                        
                    }) {
                        Image(systemName: "chevron.right")
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                Spacer(minLength: 15)
                VStack{
                    HStack {
                        Text("Sub Total")
                            .fontWeight(.heavy)
                            .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        Spacer(minLength: 180)
                        Text("€ 286.97")
                            .fontWeight(.heavy)
                            .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.orange)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    Spacer(minLength: 10)
                    HStack {
                        Text("Shipping")
                            .fontWeight(.heavy)
                            .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        Spacer(minLength: 185)
                        Text("€ 20.97")
                            .fontWeight(.heavy)
                            .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.orange)
                            .multilineTextAlignment(.trailing)
                        Spacer()
                    }
                    Spacer(minLength: 10)
                    Text("-------------------------------------")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                    Spacer(minLength: 10)
                    HStack {
                        Text("Total")
                            .fontWeight(.heavy)
                            .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                        Spacer(minLength: 210)
                        Text("€ 290.97")
                            .fontWeight(.heavy)
                            .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.orange)
                            .multilineTextAlignment(.trailing)
                        Spacer()
                    }
                    NavigationLink(destination: checkout()) {
                        Text("Checkout")
                            .padding(.all, 20.0)
                            .frame(width: 300.0, height: 70.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .padding(.leading)
        }
    }
}
struct cartScreen_Previews: PreviewProvider {
    static var previews: some View {
        cartScreen()
    }
}
