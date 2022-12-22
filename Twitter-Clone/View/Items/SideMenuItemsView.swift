//
//  SideMenuItemsView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 22/12/22.
//

import SwiftUI

struct SideMenuItemsView: View {
    
    var title : String
    
    var body: some View {
        HStack(spacing: 15, content: {
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24,height: 24)
                .foregroundColor(.gray)
            
            Text(title)
                .foregroundColor(.black)
            
            Spacer(minLength: 0)
        })
        .padding(.vertical,12)
    }
}

