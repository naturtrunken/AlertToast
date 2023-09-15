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
        
        VStack {
            HStack {
                VStack {
                    Image(systemName: icon)
                        .font(.custom("Sohne-Buch", size: 32.0))
                       // .padding(.horizontal)
                  //  Spacer()
                }
                VStack {
                    HStack {
                        Text(title)
                            .multilineTextAlignment(.leading)
                            .font(.custom("Sohne-Buch", size: 18.0))
                        Spacer()
                    }
                    HStack {
                        if (subTitle != nil) {
                            Text(subTitle!)
                                .multilineTextAlignment(.leading)
                                .font(.custom("Sohne-Buch", size: 14.0))
                                .lineSpacing(7.0)
                                .padding(.top, 10)
                        }
                        Spacer()
                    }
                    //Spacer()
                }
                .padding()

            }
            .alertBackground(backgroundColor)
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.gray.opacity(0.2), lineWidth: 0))
            .cornerRadius(8.0)
            .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 5)

            Spacer()
        }
        .padding()

        /*
        Group {
            HStack {
                
                
                
                
                
               // HStack {
                    //Spacer()
                    
                    Image(systemName: icon)
                        .font(.custom("Sohne-Buch", size: 32.0))
                       // .frame(width: 20.0)
                        .padding(.leading)
                    VStack {
                        HStack {
                            Text(title)
                                .multilineTextAlignment(.leading)
                                .font(.custom("Sohne-Buch", size: 18.0))
                            //    .frame(width: 270)
                            Spacer()
                        }
                        
                        HStack {
                            if (subTitle != nil) {
                                Text(subTitle!)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Sohne-Buch", size: 14.0))
                                  //  .frame(width: 270)
                                    .lineSpacing(7.0)
                                    .padding(.top, 10)
                            }
                            Spacer()
                        }
                    }
                    .padding()
                    
                    Spacer()
              //  }
              //  .foregroundColor(foregroundColor)
              //  .padding()
                
                
                
                
            }
           // .frame(minHeight: 50)
           // .fixedSize(horizontal: true, vertical: false)
            .alertBackground(backgroundColor)
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.gray.opacity(0.2), lineWidth: 1))
            .cornerRadius(8.0)
            .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 5)
        }
        .padding(20)
         */
    }
}

struct SimpleAlertView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleAlertView(
            title: "An error occured An error occured An error occured",
            subTitle: "Do nothing",
            icon: "x.circle.fill",
            backgroundColor: Color(red: 1, green: 0.4, blue: 0.4),
            foregroundColor: .white
        )
    }
}
