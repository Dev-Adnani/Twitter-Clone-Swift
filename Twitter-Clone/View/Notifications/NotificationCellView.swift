//
//  NotificationCellView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI


struct NotificationCellView: View {
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: width,height: 1,alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            HStack(alignment: .top, content: {
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.blue)
                    .frame(width: 20,height: 20).padding(.top,9)
                VStack(alignment: .leading,spacing: 5, content: {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36,height: 36)
                        .cornerRadius(18)
                    Text("Phoenix ")
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                    +
                    Text("Followed you")
                        .foregroundColor(.black)
                }
            )
                Spacer(minLength: 0)
            }
                   
            )}.padding(.leading,30)
    }
}

struct NotificationCellView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCellView()
    }
}
