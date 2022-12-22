//
//  SearchCellView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct SearchCellView: View {
    
    var tag = ""
    var tweets = " "
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text("Hello").fontWeight(.heavy)
            Text(tweets  + " Tweets ").fontWeight(.light)
        })
    }
}

struct SearchCellView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCellView()
    }
}
