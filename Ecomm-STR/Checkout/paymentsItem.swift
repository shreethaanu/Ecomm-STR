//
//  paymentsItem.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 19/09/22.
//

import SwiftUI

struct paymentsItem: View {
            var body: some View {
                HStack {
                    Image("appleLogo")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding([.leading, .bottom])
                        .frame(width: 80, height: 80)
                    VStack(alignment: .leading) {
                        Text("Apple Pay")
                            .font(.subheadline)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.leading)
                            .lineLimit(3)
                            .padding(.bottom, 5.0)
                        Text("......0357 8420")
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom)
                    }
                    Spacer(minLength: 50)
                    Spacer()
                    Spacer()
                    Image(systemName: "circle")
                        .resizable()
                        .frame(width: 33.0, height: 33.0)
                        .foregroundColor(.gray)
                        .padding(.trailing)
                    Spacer()
                }
                .frame(height: 90.0)
            }
        }
struct paymentsItem_Previews: PreviewProvider {
    static var previews: some View {
        paymentsItem()
    }
}
