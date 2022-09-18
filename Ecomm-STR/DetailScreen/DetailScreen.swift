//
//  DetailScreen.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 18/09/22.
//

import SwiftUI

struct DetailScreen: View {
    var sizeArray = ["S", "M", "L", "XL"]
    var colourArray: [Color] = [.gray, .red, .blue, .black, .purple]
    var body: some View {
        VStack {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                Text("Slim Fit Casual Shirt")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .lineLimit(1)
                    .padding([.top, .leading, .trailing], 60.0)
                
                Text("€ 39.99")
                    .font(.title2)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .lineLimit(1)
                    .padding(.top, 1.0)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(0 ..< 4) { item in
                            GeometryReader { geometry in
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            }
                            .frame(width: 300, height: 300)
                        }
                    }
                    .padding()
                }
                HStack {
                    Text("Select Size")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                    Spacer()
                }
                .padding(.top)
                HStack(spacing: 20) {
                    ForEach(0..<sizeArray.count) { i in
                        Button(sizeArray[i]) {
                            // self.didTap = true
                        }
                        .font(.body)
                        .frame(width: 40, height: 40)
                        .border(.gray)
                        .cornerRadius(5)
                        //.background(didTap ? Color.blue : Color.yellow)
                    }
                    Spacer ()
                }
                .padding(.leading)
                HStack {
                    Text("Select Colour")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                    Spacer()
                }
                .padding(.top, 25.0)
                HStack(spacing: 20) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(0 ..< colourArray.count) { item in
                                GeometryReader { geometry in
                                    RoundedRectangle(cornerRadius: 5)
                                        .foregroundColor(colourArray[item])
                                }
                                .frame(width: 50, height: 50)
                            }
                        }
                        .padding()
                    }
                }
                .padding(.leading)
            }
        }
            HStack{
                Text("€ 39.99")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                Spacer(minLength: 25)
                
                Button("Add to Cart"){
                }
                .frame(width: 150.0, height: 60.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                // Spacer()
            }
            .padding([.trailing], 10.0)
            Spacer ()
        }
    }
    }

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}
