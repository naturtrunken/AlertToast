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
                Text("Bla")
            }
            .foregroundColor(.white)
        }
        .padding()
        .frame(minHeight: 50)
        //.(.red)
        .cornerRadius(10)
    }
}

struct FailureView_Previews: PreviewProvider {
    static var previews: some View {
        FailureView()
    }
}
