//
//  ProfileView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 27/12/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var offset: CGFloat = 0
    @State var titleOffset: CGFloat = 0
    @State var tabOffset: CGFloat = 0
    @State var currentTab : String = "Tweets"
    @Namespace var animation
    
    var body: some View {
            
        ScrollView(.vertical,showsIndicators: false )
        {
            VStack(spacing: 15)
            {
                GeometryReader
                {
                    proxy -> AnyView in
                    
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async {
                        self.offset = minY
                        
                    }
                    
                    return AnyView(
                       ZStack
                       {
                           Image("banner")
                               .resizable()
                               .aspectRatio(contentMode: .fill)
                               .frame(width: UIScreen.main.bounds.width,height: minY > 0 ? 180 + minY  : 180 , alignment: .center)
                               .cornerRadius(0)
                           BlurView()
                               .opacity(blurOpacity())
                           VStack(spacing:5)
                           {
                               Text("Phoenix")
                                   .fontWeight(.bold)
                                   .foregroundColor(.white)
                               
                               Text("50 Tweets")
                                   .foregroundColor(.white)
                               
                           }.offset(y:120)
                               .offset(y: titleOffset > 100 ? 0 : -getTitleOffset())
                               .opacity(titleOffset < 100 ? 1 : 0)
                       }
                        .clipped()
                        .frame(height: minY > 0 ? 180+minY : nil)
                        .offset(y:minY > 0 ? -minY : -minY < 80 ? 0 : -minY - 80)
                    )
                }
                .frame(height: 180)
                .zIndex(1)
                
                VStack
                {
                    HStack
                    {
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75,height: 75)
                            .clipShape(Circle())
                            .padding(8)
                            .background(Color.white.clipShape(Circle()))
                            .offset(y: offset < 0 ? getProfileOffset()-20: -20)
                            .scaleEffect(getScaleProfile())
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Edit Profile")
                                .foregroundColor(.blue)
                                .padding(.vertical,10)
                                .padding(.horizontal)
                                .background(Capsule().stroke(Color.blue,lineWidth: 1.5))
                        })
                    }
                    .padding(.top,-25)
                    .padding(.bottom,-10)
                    .padding(.leading,5)
                    .padding(.trailing,10)
                    
                    
                    VStack(alignment: .leading,spacing: 8 ,content: {
                        Text("Phoenix")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("@notphoenix")
                            .foregroundColor(.gray)
                        
                        Text("Competitive Coder, Data Structure And Algorithms , I Love Building Apps/Backend Infra Structure , DAIICT'24 ")
                        
                        HStack(spacing: 5, content: {
                            Text("13")
                                .fontWeight(.semibold)
                                .foregroundColor(.primary)
                            
                            Text("Followers")
                                .foregroundColor(.gray)
                            
                            Text("2")
                                .fontWeight(.semibold)
                                .foregroundColor(.primary)
                                .padding(.leading,10)
                            
                            Text("Following")
                                .foregroundColor(.gray)
                        })
                           
                    }).padding(.leading,10)
                        .padding(.trailing,10)
                        .overlay(GeometryReader{
                            proxy -> Color in
                            
                            let minY = proxy.frame(in: .global).minY
                            DispatchQueue.main.async {
                                self.titleOffset = minY
                            }
                            
                            return Color.clear
                            
                        }.frame(width: 0,height: 0),alignment: .top)
                    
                    VStack(spacing: 0, content: {
                        ScrollView(.horizontal,showsIndicators: false,content: {
                            HStack(spacing: 0, content: {
                                ProfileTabButton(title: "Tweets", currentTab: $currentTab, animation: animation)
                                ProfileTabButton(title: "Tweets & Likes", currentTab: $currentTab, animation: animation)
                                ProfileTabButton(title: "Media", currentTab: $currentTab, animation: animation)
                                ProfileTabButton(title: "Likes", currentTab: $currentTab, animation: animation)
                            })
                        })
                        Divider()
                    }).padding(.top,20)
                        .background(Color.white)
                        .offset(y:tabOffset < 90 ? -tabOffset + 90 : 0)
                        .overlay(GeometryReader{
                            proxy -> Color in
                            
                            let minY = proxy.frame(in: .global).minY
                            DispatchQueue.main.async {
                                self.tabOffset = minY
                            }
                            
                            return Color.clear
                            
                        }.frame(width: 0,height: 0),alignment: .top)
                        .zIndex(1)
                    
                }
            }
        }
    }
    
    func blurOpacity() -> Double
    {
        let progress = -(offset+80)/150
        return Double(-offset > 80 ? progress : 0)
    }
    
    func getTitleOffset() -> CGFloat
    {
        let progress = 20 / titleOffset
        let offset = 60 * (progress > 0 && progress <= 1 ? progress : 1)
        return offset
    }

    func getProfileOffset() -> CGFloat
    {
        let progress = -(offset/80) * 20
        return progress <= 20 ? progress : 20
    }

    func getScaleProfile() -> CGFloat
    {
        let progress = -(offset/80)
        let scale = 1.8 - (progress < 1.0 ? progress : 1)
        return scale < 1 ? scale : 1
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
