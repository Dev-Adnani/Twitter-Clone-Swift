//
//  TopBarView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 22/12/22.
//

import SwiftUI

struct TopBarView: View {
    
    @Binding var x:CGFloat
    @State var width = UIScreen.main.bounds.width

    var body: some View {
        VStack
        {
            HStack
            {
                Button(action: {
                    withAnimation{
                        x = 0
                    }
                }) {
                   Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color("bg"))
                }
                
                Spacer(minLength: 0)
                
                Image("twt")
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing)
                    .frame(width: 40,height: 20)
                
                Spacer(minLength: 0)

            }.padding()
            Rectangle()
                .frame(width: width,height: 1,alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
        .background(Color.white)
    }
}

