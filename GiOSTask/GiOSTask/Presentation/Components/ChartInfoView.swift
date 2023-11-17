//
//  ContentView.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import SwiftUI

struct ChartInfoView: View {
    var cryptoData: CryptoData
    var cryptoIcons: [String: CryptoIconModel]
    var body: some View {
        CryptoCell(icon: cryptoIcons["\(cryptoData.id)"]?.logo ?? "", cryptoData: cryptoData).padding()
    }
}

#Preview {
    ChartInfoView(cryptoData: CryptoData.mockCoin, cryptoIcons: ["1": CryptoIconModel(logo: ""), "2": CryptoIconModel(logo: "")])
}
