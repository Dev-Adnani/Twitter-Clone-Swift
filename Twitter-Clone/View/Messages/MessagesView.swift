//
//  MessagesView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
       VStack
        {
            ScrollView{
                ForEach(0..<9) {
                    _ in MessageCellView()
                }
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
