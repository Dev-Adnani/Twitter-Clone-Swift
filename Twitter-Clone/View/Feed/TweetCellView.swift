//
//  TweetCellView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct TweetCellView: View {
    
    var tweet:String
    var tweetImage : String?
    
    var body: some View {
        VStack
        {
            HStack(alignment: .top,spacing: 10, content: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55,height: 55)
                    .clipShape(Circle())
                VStack(alignment: .leading,spacing: 10,content: {
                    (
                        Text("Phoenix ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        +
                        Text("@phoenix")
                            .foregroundColor(.gray)
                    )
                    
                    Text(tweet)
                        .frame(maxHeight: 100,alignment: .top)
                    if let image = tweetImage
                    {
                        GeometryReader {
                            proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width,height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height:250)
                    }
                })
            })
            HStack(spacing: 50, content: {
                Button(action: {
                    
                }, label:  {
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 16,height: 16)
                        .foregroundColor(.gray)
                })
                
                Button(action: {
                    
                }, label:  {
                    Image(systemName: "arrow.2.squarepath")
                        .resizable()
                        .frame(width: 18,height: 14)
                        .foregroundColor(.gray)
                })
                
                Button(action: {
                    
                }, label:  {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 18,height: 15)
                        .foregroundColor(.gray)
                })
                
                Button(action: {
                    
                }, label:  {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 18,height: 14)
                        .foregroundColor(.gray)
                })

            })
            .padding(.top,4)
        }
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweet: sampleText)
    }
}

var sampleText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"
