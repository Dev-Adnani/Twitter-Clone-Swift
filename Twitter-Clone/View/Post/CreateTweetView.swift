//
//  CreateTweetView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct CreateTweetView: View {
    
    @State var text = ""
    
    var body: some View {
        VStack
        {
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("Cancel")
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Tweet")
                        .padding()
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            MultiLineTextField(text: $text)
        }.padding()
    } 
}

struct CreateTweetView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTweetView()
    }
}
