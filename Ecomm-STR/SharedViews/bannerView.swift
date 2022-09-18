//
//  bannerView.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 18/09/22.
//

import SwiftUI

struct bannerView: View {
    @State var myItems: homeDataModel
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(0 ..< 5) { item in
                    GeometryReader { geometry in
                        VStack {
                           
                            NavigationLink(destination: DetailScreen(myItems: myItems)) {
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
                            Text("Casual dress")
                                .font(.title3)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                            
                            Text("€ 39.99")
                                .font(.body)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                            
                        }
                    }
                    .frame(width: 300, height: 400)
                }
            }
            .padding()
        }
    }
}
struct bannerView_Previews: PreviewProvider {
    static var previews: some View {
        bannerView(myItems: homeDataModel(name: "Casual Dress", Price: "€ 39.99"))
    }
}


extension View {
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
