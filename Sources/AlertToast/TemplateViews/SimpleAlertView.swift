//
//  SwiftUIView.swift
//  
//
//  Created by Andreas Marc Klingler on 23.01.23.
//

import SwiftUI

struct SimpleAlertView: View {
    var title: String
    var subTitle: String?
    var icon: String
    var backgroundColor: Color
    var foregroundColor: Color
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack {
                    Image(systemName: icon)
                        .font(.custom("Sohne-Buch", size: 32.0))
                }
                .padding(.trailing, 10)
                
                VStack(alignment: .leading) {
                    HStack(alignment: .top) {
                        //Spacer()
                        Text(title)
                            .multilineTextAlignment(.leading)
                            .font(.custom("Sohne-Buch", size: 22.0))
                        Spacer()
                    }
                    /*
                    HStack {
                        if (subTitle != nil) {
                            Text(subTitle!)
                                .multilineTextAlignment(.leading)
                                .font(.custom("Sohne-Buch", size: 18.0))
                                .lineSpacing(7.0)
                                .padding(.top, 10)
                        }
                        Spacer()
                    }
                    */
                }
                .padding(.top, 5)

            }
            .padding([.horizontal, .top])
            .padding([.bottom], 20)
            .alertBackground(backgroundColor)
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.gray.opacity(0.2), lineWidth: 0))
            .cornerRadius(8.0)
            .shadow(color: Color.black.opacity(0.25), radius: 8, x: 4, y: 8)

            Spacer()
        }
        .padding()
    }
}

struct SimpleAlertView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleAlertView(
            title: "Kollektion konnte nicht angelegt werden.",
            subTitle: "",
            icon: "x.circle.fill",
            backgroundColor: Color(red: 1, green: 146/255, blue: 147/255),
            foregroundColor: .white
        )
    }
}
