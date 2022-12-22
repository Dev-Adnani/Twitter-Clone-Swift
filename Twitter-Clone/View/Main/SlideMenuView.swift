//
//  SlideMenuView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 22/12/22.
//

import SwiftUI

struct SlideMenuView: View {
    
    @State var show = false
    var menuButtons = ["Profile","Lists","Topic","Bookmarks","Moments"]
    @State var width = UIScreen.main.bounds.width
    var edges = UIApplication
        .shared
        .connectedScenes
        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
        .first { $0.isKeyWindow }?.safeAreaInsets

    var body: some View {
        VStack{
            HStack(spacing: 0, content: {
                VStack(alignment: .leading, content: {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60,height: 60)
                        .clipShape(Circle())
                    
                    HStack(alignment: .top, spacing:12,content: {
                        VStack(alignment: .leading,spacing: 12,content: {
                            Text("Phoenix ")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Text("@phoenix")
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 20, content: {
                                FollowView(count: 8, title: "Following")
                                FollowView(count: 16, title: "Followers")
                            }).padding(.top,20)
                            Divider().padding(.top,10)
                        })
                        Spacer(minLength: 0)
                        Button(action: {
                            withAnimation{
                                self.show.toggle()
                            }
                        }, label: {
                            Image(systemName: show ? "chevron.down" : "chevron.up")
                                .foregroundColor(Color("bg"))
                        })
                    })
                    
                    VStack(alignment: .leading, content: {
                        ForEach(menuButtons, id:\.self)
                        {
                            item in SideMenuItemsView(title: item)
                        }
                        Divider()
                            .padding(.top)
                        
                        Button(action: {
                           
                        }, label: {
                            SideMenuItemsView(title: "Twitter Ads")
                        })
                        
                        Divider()
                        
                        Button(action: {
                           
                        }, label: {
                            SideMenuItemsView(title: "Settings and privacy")
                        })
                        Button(action: {
                           
                        }, label: {
                            SideMenuItemsView(title: "Help Centre")
                        })
                      
                        
                        Spacer(minLength: 0)
                        
                        Divider().padding(.bottom)
                        
                        
                        HStack
                        {
                            Button(action: {
                               
                            }, label: {
                              
                                Image(systemName: "lightbulb.circle")
                                     .renderingMode(.template)
                                     .resizable()
                                     .frame(width: 26,height: 26)
                                     .foregroundColor(Color("bg"))
                                
                                Spacer(minLength: 0)

                                
                                Image(systemName: "barcode.viewfinder")
                                     .renderingMode(.template)
                                     .resizable()
                                     .frame(width: 26,height: 26)
                                     .foregroundColor(Color("bg"))
                                 
                            })
                        }
                        
                    }).opacity(show ? 1 : 0)
                        .frame(height: show ? nil : 0)
                    
                    VStack(alignment: .leading, content: {
                        Button(action: {
                            
                        }, label: {
                            SideMenuItemsView(title: "Create New Account")
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            SideMenuItemsView(title: "Add Existing Account")
                        })
                        
                        Spacer(minLength: 0)
                    }).opacity(show ? 0 : 1)
                        .frame(height: show ? 0 : nil)
                    
                }).padding(.horizontal,20)
                    .padding(.top,edges?.top == 0 ? 15 : edges?.top)
                    .padding(.bottom,edges?.bottom == 0 ? 15 : edges?.bottom)
                    .frame(width: width-90)
                    .background(Color.white)
                    .ignoresSafeArea(.all,edges: .vertical)
            })
        }
    }
}

struct SlideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenuView()
    }
}
