//
//  ContentView.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import SwiftUI

struct SettingsButton: View {
    var body: some View {
        Button(action: {
        }) {
            Image(AppIcons.SettingIc.rawValue)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 20))
            
        }
    }
}

#Preview {
    SettingsButton()
}
