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
    
    @State private var didTap:Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    topbar()
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
                                    self.didTap = true
                                }
                                .font(.body)
                                .frame(width: 80, height: 40)
                                .border(.gray)
                                .cornerRadius(5)
                                .background(didTap ? Color.blue : Color.yellow)
                            }
                        }
                        .padding(.leading)
                    }
                    .scrollIndicators(.hidden, axes: .horizontal)
                    bannerView(myItems: homeDataModel(name: "Casual Dress", Price: "€ 39.99"))
                    HStack(){
                        Text("Most popular")
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
                    Spacer ()
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
