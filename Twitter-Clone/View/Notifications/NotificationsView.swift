//
//  NotificationsView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack
        {

                ForEach(0..<9)
                {
                    _ in
                    NotificationCellView()
                }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
