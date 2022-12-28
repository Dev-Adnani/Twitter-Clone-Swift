//
//  RegisterView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 28/12/22.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var pass = ""

    
    var body: some View {
        VStack{
            ZStack{
                HStack{
                    Button(action: {
                        
                    }, label: {
                        Text("Cancel")
                        
                        
                    }).padding(.horizontal)
                    
                    Spacer()
                    
                }
                
                Image("twt")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 30,height: 30)
            }
            
            Text("Create Your Account")
                .font(.title)
                .bold()
                .padding(.top,35)
            
            VStack(alignment: .leading, content: {
                CustomAuthTextView(placeholder: "Name", text: $name)
                CustomAuthTextView(placeholder: "Email", text: $email)
                SecureTextFieldView(placeholder: "Password", text: $pass
                )
            })
            
            Spacer(minLength: 0)
            
            VStack
            {
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                
                HStack{
                    
                    Spacer()

                    Button(action: {
                        
                    }, label: {
                        Capsule()
                            .frame(width: 60,height: 30,alignment: .center)
                            .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                            .overlay(
                            Text("Next")
                                .foregroundColor(.white)
                            )
                    })
                }
                .padding(.trailing,24)
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
