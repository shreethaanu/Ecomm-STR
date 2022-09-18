//
//  topbar.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 16/09/22.
//

import SwiftUI

struct topbar: View {
    var body: some View {
            HStack {
                Button(action: {
                    print("button pressed")
                    
                }) {
                    Image("hamburger")
                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 25.0, height: 25.0)
                }
                .padding(.leading, 25.0)
                Spacer()
                
                Text("STR ECOMM")
                    .font(.title)
                    .fontWeight(.ultraLight)
                Spacer()
                Button(action: {
                    print("button pressed")
                }) {
                    Image("cart")
                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 30.0, height: 30.0)
                }
                .padding(.trailing, 25.0)
            }
            .frame(maxWidth: .infinity, maxHeight: 90)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.904)/*@END_MENU_TOKEN@*/)
    }
}

struct topbar_Previews: PreviewProvider {
    static var previews: some View {
        topbar()
    }
}
