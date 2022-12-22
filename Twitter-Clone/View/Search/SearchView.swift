//
//  SearchView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct SearchView: View {
    
    @State var text = ""
    @State var isEditing = false
    
    var body: some View {
        VStack
        {
          
            SearchBarView(searchData: $text, isEditing: $isEditing)
            .padding(.horizontal)


            if !isEditing
            {
                List(0..<9)
                {
                    i in
                    SearchCellView(tag: "Helo",tweets: String(i))
                }
            }
            else
            {
                List(0..<9)
                {
                    i in
                    SearchUserCellView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
