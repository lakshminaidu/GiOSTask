//
//  ContentView.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import SwiftUI

struct CryptoList: View {
    var cryptoArr: [CryptoData]
    var cryptoIcons: [String: CryptoIconModel]
    var body: some View {
        List {
            ForEach(cryptoArr, id: \.id) { data in
                let cryptoId = data.id
                CryptoCell(icon: cryptoIcons["\(data.id)"]?.logo ?? "" , cryptoData: data)
                    .listRowSeparator(.hidden)
            }
        }
        .listStyle(.plain)
        .background(Color.clear)
        .listRowBackground(Color.clear)
    }
}

#Preview {
    CryptoList(cryptoArr: [], cryptoIcons: [:])
}
