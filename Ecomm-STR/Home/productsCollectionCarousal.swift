//
//  productsCollectionCarousal.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 18/09/22.
//

import SwiftUI

struct productsCollectionCarousal: View {
    @State var subtitle: String
    var body: some View {
        VStack {
            HStack(){
                Text(subtitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                Spacer()
                Button("See all") {
                    print("see all tapped")
                }
                .padding(.trailing)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0 ..< 10) { item in
                        GeometryReader { geometry in
                            RoundedRectangle(cornerRadius: 30)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        }
                        .frame(width: 150, height: 150)
                    }
                }
                .padding()
            }
        }
    }
}

struct productsCollectionCarousal_Previews: PreviewProvider {
    static var previews: some View {
        productsCollectionCarousal(subtitle: "Data")
    }
}
