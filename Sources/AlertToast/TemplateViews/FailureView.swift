//
//  SwiftUIView.swift
//  
//
//  Created by Andreas Marc Klingler on 20.01.23.
//

import SwiftUI

struct FailureView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Image(systemName: "x.circle")
                    .font(.custom("Sohne-Buch", size: 38.0))
                    .frame(width: 20.0)
                    .padding(.trailing)
                Text("Objekt konnte nicht hinzugefügt werden.")
                    .multilineTextAlignment(.leading)
                    .font(.custom("Sohne-Buch", size: 18.0))
                    .frame(width: 270)
                    .lineSpacing(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
        }
        .frame(minHeight: 50)
        .fixedSize(horizontal: true, vertical: false)
        .alertBackground(Color(red: 1, green: 0.4, blue: 0.4))
        .clipShape(Rectangle())
        .overlay(Rectangle().stroke(Color.gray.opacity(0.2), lineWidth: 1))
        .cornerRadius(28.0)
        .shadow(color: Color.black.opacity(0.25), radius: 5, x: 0, y: 10)
    }
}

struct FailureView_Previews: PreviewProvider {
    static var previews: some View {
        FailureView()
    }
}
