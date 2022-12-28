//
//  LoginView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 28/12/22.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var emailDone = false

    var body: some View {
        if !emailDone
        {
            VStack
            {
                VStack
                {
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
                    Text("To get started first enter your phone,email or @username")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    CustomAuthTextView(placeholder: "Phone, email or @username", text: $email)
                    
                }
                Spacer(minLength: 0)
                
                VStack
                {
                    Button(action: {
                        self.emailDone.toggle()
                    }, label: {
                        Capsule()
                            .frame(width: 360,height: 35,alignment: .center)
                            .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                            .overlay(
                            Text("Next")
                                .foregroundColor(.white)
                            )
                    }).padding(.bottom,4)
                    
                    Text("Forget Password?")
                        .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                }
            }
        }
        else
        {
            VStack
            {
                VStack
                {
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
                    Text("Enter Your Password")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    SecureTextFieldView(placeholder: "Password", text: $password)
                    
                }
                Spacer(minLength: 0)
                
                VStack
                {
                    Button(action: {
                        
                    }, label: {
                        Capsule()
                            .frame(width: 360,height: 35,alignment: .center)
                            .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                            .overlay(
                            Text("Login")
                                .foregroundColor(.white)
                            )
                    }).padding(.bottom,4)
                    
                    Text("Forget Password?")
                        .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
