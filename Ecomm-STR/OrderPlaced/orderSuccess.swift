//
//  orderSuccess.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 19/09/22.
//

import SwiftUI

struct orderSuccess: View {
    @State private var scale = 1.0
    @State var zoomed = false
  
    var body: some View {
       
        VStack {
            Text("Package Summary")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical)
          //  self.zoomed.toggle()
//            GeometryReader() { geometry in
//                Image("orderSuccess").resizable()
//                    .frame(width: 200, height: 200)
//                    .clipShape(RoundedRectangle(cornerRadius: self.zoomed ? 40 : 400 ))
//                    .overlay( Circle()
//                        .fill(self.zoomed ? Color.clear : Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.4))
//                        .saturation(self.zoomed ? 1 : 0)
//                        .scaleEffect(0.8) )
//                    .position(x: self.zoomed ? geometry.frame(in: .local).midX : 640, y: 150)
//                    .scaleEffect(self.zoomed ? 1.73 : 0.33)
//                    .shadow(radius: 10)
//                    .animation(.spring())
//            }
            Image("orderSuccess")
                .renderingMode(.original)
                .resizable()
                .frame(width: 300, height: 300)
                .animation(.linear(duration: 1), value: 5.0)
                .scaleEffect(scale)
                .onAppear {
                    let baseAnimation = Animation.linear(duration: 1)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)
                    withAnimation(repeated) {
                        scale = 0.9
                    }
                }
            
            Text("Order Confirmed")
                .font(.title2)
                .fontWeight(.thin)
                .padding(.vertical)
            
            Text("Sit back and relax.Your express package is arriving in 3 Days.")
                .fontWeight(.regular)
                .lineLimit(nil)
                .padding(.all)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            NavigationLink(destination: checkout()) {
                Text("Track Package")
                    .padding(.all, 20.0)
                    .frame(width: 300.0, height: 70.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 1.0, green: 0.698, blue: 0.361)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
            }
            
            NavigationLink(destination: checkout()) {
                Text("View Package Information")
                    .padding(.all, 30.0)
                    .frame(width: 300.0, height: 70.0)
                    .border(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 1.0, green: 0.698, blue: 0.361)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15.0)
                    .fontWeight(.regular)
            }
            
            Text("Facing Issue? **Chat with Senz Staff**")
                .font(.subheadline)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.all)
            
            .padding(.top)
            Spacer()
        }
    }
}

struct orderSuccess_Previews: PreviewProvider {
    static var previews: some View {
        orderSuccess()
    }
}
