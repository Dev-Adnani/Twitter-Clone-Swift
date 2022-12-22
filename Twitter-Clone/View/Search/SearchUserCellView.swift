//
//  SearchUserCellView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct SearchUserCellView: View {
    var body: some View {
        HStack
        {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44,height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Phoenix ")
                    .fontWeight(.heavy)
                
                Text("@phoenix")
                    .foregroundColor(.gray)
            }
            Spacer(minLength: 0)
        }
    }
}

struct SearchUserCellView_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCellView()
    }
}
