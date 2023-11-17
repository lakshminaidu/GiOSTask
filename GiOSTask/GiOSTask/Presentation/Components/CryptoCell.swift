//
//  ContentView.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import SwiftUI

struct CryptoCell: View {
    var icon: String
    var cryptoData: CryptoData
    var body: some View {
        HStack {
            if icon.count == 0 {
                ProgressView()
                    .progressViewStyle(.circular)
                    .scaleEffect(1)
                    .tint(.black)
                
            } else {
                NetworkImageView(imageURL: URL(string:icon)!)
                    .frame(width: 64,height:64)
            }
            VStack {
                HStack {
                    TextElement(text: cryptoData.symbol, fontSize: 18, font: AppFont.InterBold.rawValue, alignment: .leading)
                    Image((cryptoData.isGrowing ? AppIcons.greenChart : AppIcons.redChart).rawValue)
                        .resizable()
                        .frame(width: 50, height: 20)
                    Spacer()
                          TextElement(text: "$\(cryptoData.getPrice()) USD", fontSize: 16, font: AppFont.InterBold.rawValue, alignment: .trailing)
                        .padding(.trailing,20)
                    
                }
                HStack {
                    TextElement(text: cryptoData.name, fontSize: 13, font: AppFont.InterSemiBold.rawValue, alignment: .leading)
                    Spacer()
                        TextElement(text: String(format:"%.2f", cryptoData.getPercentage()), fontSize: 13, font: AppFont.InterSemiBold.rawValue, alignment: .trailing)
                        .padding(.trailing,20)
                        .foregroundColor(cryptoData.getPercentage() < 0 ? .red : Color.chartPercentageColor)
                }
            }
        }
    }
    
}

#Preview {
    CryptoCell(icon: "",cryptoData: CryptoData.mockCoin).padding()
}
