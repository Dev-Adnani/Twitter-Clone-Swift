//
//  WelcomeView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 28/12/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack{
                HStack
                {
                    
                    Spacer(minLength: 0)

                    Image("twt")
                        .resizable()
                        .scaledToFill()
                        .padding(.trailing)
                        .frame(width: 30,height: 30)
                    
                    Spacer(minLength: 0)
                }
                
                Spacer(minLength: 0)
                
                Text("See what's happening in world right now.")
                    .font(.system(size: 30,weight: .heavy,design: .default))
                    .frame(width: (getRect().width) * 0.9,alignment: .center)
                
                Spacer(minLength: 0)

                
                VStack(alignment: .center, spacing: 10,content: {
                    Button(action: {
                        
                    }, label: {
                        HStack(spacing: -4, content: {
                            
                            Image("google")
                                .resizable()
                                .scaledToFill()
                                .padding(.trailing)
                                .frame(width: 30,height: 30)
                            
                            Text("Continue With Google")
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding()
                                .fontWeight(.bold)
                                
                        })
                        .overlay(RoundedRectangle(cornerRadius: 36)
                            .stroke(Color.black,lineWidth:1)
                            .opacity(0.3)
                            .frame(width: 320,height: 60,alignment: .center))
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        HStack(alignment: .center,spacing: -4 ,content: {
                            
                            Image("apple")
                                .resizable()
                                .scaledToFill()
                                .padding(.trailing)
                                .frame(width: 20,height: 20)
                            
                            Text("Continue With Apple")
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding()
                                .fontWeight(.bold)
                                
                        })
                        .overlay(RoundedRectangle(cornerRadius: 36)
                            .stroke(Color.black,lineWidth:1)
                            .opacity(0.3)
                            .frame(width: 320,height: 60,alignment: .center))
                    })

                    HStack{
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: (getRect().width * 0.35),height: 1)
                        
                        Text("Or")
                            .foregroundColor(.gray)
                            .padding()
                        
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: (getRect().width * 0.35),height: 1)
                    }
                    
                    
                    NavigationLink(destination: RegisterView().navigationBarHidden(true), label: {
                        RoundedRectangle(cornerRadius: 36)
                            .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                            .frame(width: 320,height: 60,alignment: .center)
                            .overlay(
                                Text("Create Account")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .padding()
                                    .fontWeight(.bold)
                            )

                    })
                    

                }).padding()
                VStack(alignment: .leading, content: {
                    Text("By signing up , you agree to our ")
                    + Text("Terms").foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                    + Text(" , ")
                    + Text("Privacy Policy").foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                    + Text(" , ")
                    + Text("Cookie Use").foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))

                })
                .padding(.bottom)
                
                HStack(spacing:2)
                {
                    Text("Have a account already?")
                    NavigationLink(destination: LoginView().navigationBarHidden(true)) {
                        Text(" Log in").foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                    }
                }
            }.navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
