//
//  SearchBarView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchData:String
    @Binding var isEditing:Bool

    var body: some View {
       HStack
        {
            TextField("Search Twitter",text: $searchData )
                .padding(8)
                .padding(.horizontal,24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass").renderingMode(.template).foregroundColor(Color(.gray))
                            .frame(minWidth: 0, maxWidth: .infinity,
                            alignment: .leading)
                            .padding(.leading ,8)
                }
            )
            
            Button(action: {
                isEditing = false
                searchData = ""
                UIApplication.shared.endEditing()
            }, label:  {
                Text("Cancel")
                .foregroundColor(.red)
                .padding(.trailing,8)
                .transition(.move(edge: .trailing))
                .animation(.default)
            })
        }
        .onTapGesture {
            isEditing = true
        }
    }
}
