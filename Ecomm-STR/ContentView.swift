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
                                print("Tapped")
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
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(0 ..< 5) { item in
                            GeometryReader { geometry in
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .rotation3DEffect(
                                        Angle(
                                            degrees: Double((geometry.frame(in: .global).minX - 20) / -20)
                                        ),
                                        axis: (x: 0, y: 1, z: 0),
                                        anchor: .center,
                                        anchorZ: 0.0,
                                        perspective: 1.0
                                    )
                            }
                            .frame(width: 300, height: 300)
                        }
                    }
                    .padding()
                }
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
                            .frame(width: 180, height: 300)
                        }
                    }
                    .padding()
                }
                Spacer ()
            }
            
        }
    }
    var bannerV: some View {
        VStack{
            
        }
    }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
