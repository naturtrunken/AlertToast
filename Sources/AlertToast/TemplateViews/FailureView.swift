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
                Image(systemName: "x.circle")
                    .font(.custom("Sohne-Dreiviertelfett", size: 42.0))
                Text("Objekt konnte nicht hinzugefügt werden. Objekt konnte nicht hinzugefügt werden.")
                    .multilineTextAlignment(.leading)
                    .font(.custom("Sohne-Dreiviertelfett", size: 20.0))
                    .frame(width: 300)
            }
            .foregroundColor(.white)
        }
        .padding()
        .frame(minHeight: 50)
        .fixedSize(horizontal: true, vertical: false)
        .alertBackground(Color(red: 1, green: 0.4, blue: 0.4))
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.gray.opacity(0.2), lineWidth: 1))
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 6)
    }
}

struct FailureView_Previews: PreviewProvider {
    static var previews: some View {
        FailureView()
    }
}
