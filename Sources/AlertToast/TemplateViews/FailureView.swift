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
                    .font(.custom("Sohne-Dreiviertelfett", size: 24.0))
            }
            .foregroundColor(.white)
        }
        .padding()
        .frame(minHeight: 050)
        .fixedSize(horizontal: true, vertical: false)
        .alertBackground(.red)
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
