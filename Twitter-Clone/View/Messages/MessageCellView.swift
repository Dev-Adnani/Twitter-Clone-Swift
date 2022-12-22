//
//  MessageCellView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 22/12/22.
//

import SwiftUI

struct MessageCellView: View {
    
    @State var width = UIScreen.main.bounds.width

    var body: some View {
        VStack(alignment: .leading, content: {
            Rectangle()
                .frame(width: width,height: 1,alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            HStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60,height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                
                VStack(alignment: .leading) {
                 HStack
                    {
                        Text("Phoenix ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("@phoenix")
                            .foregroundColor(.gray)
                        
                        Spacer(minLength: 0)
                        
                        Text("6/20/21 ")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                    Text("You : How Is It Going ?")
                        .foregroundColor(.gray)
                    Spacer()
                }
            }.padding(.top,2)
            
        }).frame(width: width,height:84)
    }
}

struct MessageCellView_Previews: PreviewProvider {
    static var previews: some View {
        MessageCellView()
    }
}
