//
//  TabbarView.swift
//  GiOSTask
//
//  Created by iSHIKA on 17/11/23.
//

import SwiftUI

import SwiftUI

enum TabBarIcons: String, Codable, CaseIterable {
    case shopIc
    case exchangeIc
    case metaverseIc
    case launchpadIc
    case walletIc
    
}

enum TabLabels: String, CaseIterable, Codable {
    case shopLbl = "€-Shop"
    case ExchangeLbl = "Exchange"
    case launchpadLbl = ""
    case LaunchpadsLbl = "Launchpads"
    case WalletLbl = "Wallet"
}

struct TabbarView: View {
    let tabBarIconsArray = TabBarIcons.allCases.map { $0.rawValue }
    let tabBarLblArray = TabLabels.allCases.map { $0.rawValue }
    
    var body: some View {
        ZStack {
            HStack {
                ForEach(0..<tabBarIconsArray.count, id: \.self) { index in
                    Spacer()
                    if tabBarIconsArray[index] == TabBarIcons.metaverseIc.rawValue {
                        // This is just a dummy, we will add metaverse separately
                        TabBtn(buttonTitle: "", buttonIcon: "", isSelected: false){
                            
                        }
                    }else{
                        TabBtn(buttonTitle: tabBarLblArray[index], buttonIcon: tabBarIconsArray[index], isSelected: tabBarLblArray[index] == TabLabels.ExchangeLbl.rawValue ? true : false){
                        }
                    }
                    Spacer()
                }
            }
            .background(.black)
            .clipShape(.rect(cornerRadius: 25))
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            
        }
        .background(.clear)
    }
}

#Preview {
    TabbarView()
}
