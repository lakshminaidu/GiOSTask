//
//  ContentView.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import SwiftUI

struct NotificationsButton: View {
    var body: some View {
        Button(action: {
            // TODO: Notifications button action
        }) {
            ZStack(alignment: .topTrailing) {
                VStack {
                    Image(AppIcons.NotificationIc.rawValue)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 10))
                }
                VStack {
                    Image(AppIcons.Indicator.rawValue)
                    
                }
                
            }
            
        }
    }
}

#Preview {
    NotificationsButton()
}
