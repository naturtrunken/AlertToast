//
//  SwiftUIView.swift
//  
//
//  Created by Andreas Marc Klingler on 23.01.23.
//

import SwiftUI

struct SimpleAlertView: View {
    var title: String
    var icon: String
    var backgroundColor: Color
    var foregroundColor: Color
    
    var body: some View {
        Group {
            VStack {
                HStack {
                    Spacer()
                    
                    Image(systemName: icon)
                        .font(.custom("Sohne-Buch", size: 38.0))
                        .frame(width: 20.0)
                        .padding(.trailing)
                    Text(title)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Sohne-Buch", size: 18.0))
                        .frame(width: 270)
                        .lineSpacing(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                }
                .foregroundColor(foregroundColor)
                .padding()
            }
            .frame(minHeight: 50)
            .fixedSize(horizontal: true, vertical: false)
            .alertBackground(backgroundColor)
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.gray.opacity(0.2), lineWidth: 1))
            .cornerRadius(28.0)
            .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 10)
        }
        .padding(.top, 60)
    }
}

struct SimpleAlertView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleAlertView(
            title: "Error occured",
            icon: "info.circle",
            backgroundColor: Color(red: 1, green: 0.4, blue: 0.4),
            foregroundColor: .white
        )
    }
}
