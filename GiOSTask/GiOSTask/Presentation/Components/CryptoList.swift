//
//  ContentView.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import SwiftUI

struct CryptoList: View {
    var cryptoData: [CryptoData]
    var cryptoIcons: [String: CryptoIconModel]
    var body: some View {
        VStack {
            HStack {
                TextElement(text: "Top Currencies", fontSize: 16, font: AppFont.InterBold.rawValue, alignment: .leading)
                    .foregroundColor(Color.black)
                Spacer()
                TextElement(text: "View All", fontSize: 12, font: AppFont.InterBold.rawValue, alignment: .trailing)
                    .foregroundColor(Color.filterBtnColor)
            }
            .padding([.horizontal, .top], 16)
            .padding([.bottom], 4)
            
            List {
                ForEach(cryptoData, id: \.id) { data in
                    CryptoCell(icon: cryptoIcons["\(data.id)"]?.logo ?? "" , cryptoData: data)
                        .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .background(Color.clear)
            .listRowBackground(Color.clear)
        }
        
    }
}

#Preview {
    CryptoList(cryptoData: CryptoData.mockList, cryptoIcons: ["1": CryptoIconModel(logo: ""), "2": CryptoIconModel(logo: "")])
}
