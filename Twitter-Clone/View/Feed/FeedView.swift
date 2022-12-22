//
//
//  FeedView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false,
            content: {
            VStack(spacing: 18, content: {
                
                TweetCellView(tweet: "Hey My Name Is John",tweetImage: "logo")
                Divider()
                ForEach(1...20, id: \.self)
                {  _ in
                    TweetCellView(tweet: sampleText)
                    Divider()
                }
            }).padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        })
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
