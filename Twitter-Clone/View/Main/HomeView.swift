//
//  HomeView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedIndex = 2
    @State var showCreateTweet = false
    @State var text = ""
    
    var body: some View {
        VStack{
            ZStack{
                TabView {
                    FeedView()
                        .onTapGesture {
                            self.selectedIndex = 0
                        }
                        .tabItem {
                            if(selectedIndex==0)
                            {
                                Image(systemName: "house").renderingMode(.template).foregroundColor(Color("bg"))
                            }
                            else
                            {
                                Image(systemName:"house").foregroundColor(.gray)
                            }
                        }.tag(0)
                    SearchView()
                        .onTapGesture {
                            self.selectedIndex = 1
                        }
                        .tabItem {
                            if(selectedIndex==1)
                            {
                                Image(systemName: "magnifyingglass").renderingMode(.template).foregroundColor(Color("bg"))
                            }
                            else
                            {
                                Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            }
                        }.tag(1)
                    NotificationsView()
                        .onTapGesture {
                            self.selectedIndex = 2
                        }
                        .tabItem {
                            if(selectedIndex==2)
                            {
                                Image( systemName: "bell.fill").renderingMode(.template).foregroundColor(Color("bg"))
                            }
                            else
                            {
                                Image(systemName: "bell.fill").foregroundColor(.gray)
                            }
                        }.tag(2)
                    MessagesView()
                        .onTapGesture {
                            self.selectedIndex = 3
                        }
                        .tabItem {
                            if(selectedIndex==3)
                            {
                                Image(systemName: "envelope").renderingMode(.template).foregroundColor(Color("bg"))
                            }
                            else
                            {
                                Image(systemName:"envelope").foregroundColor(.gray)

                            }
                        }.tag(3)
                }
                VStack
                {
                    Spacer()
                    HStack
                    {
                        Spacer()
                        
                        Button(action: {
                            self.showCreateTweet.toggle()
                        }) {
                            Image(systemName: "envelope").renderingMode(.template)
                            .resizable()
                            .frame(width: 30,height: 20)
                            .padding()
                            .background(Color("bg"))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                        }
                    }.padding()
                }
                .padding(.bottom,65)
            }
            .sheet(isPresented: $showCreateTweet, content: {
                CreateTweetView(text: text)
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
