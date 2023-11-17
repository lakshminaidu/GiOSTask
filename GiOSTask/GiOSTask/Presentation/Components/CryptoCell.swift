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
                    
                    Spacer()
                    TextElement(text: "$\(getPrice()) USD", fontSize: 16, font: AppFont.InterBold.rawValue, alignment: .trailing)
                        .padding(.trailing,20)
                    
                }
                HStack {
                    TextElement(text: cryptoData.name, fontSize: 13, font: AppFont.InterSemiBold.rawValue, alignment: .leading)
                    Spacer()
                    TextElement(text: String(format:"%.2f",getPercentage()), fontSize: 13, font: AppFont.InterSemiBold.rawValue, alignment: .trailing)
                        .padding(.trailing,20)
                        .foregroundColor(getPercentage() < 0 ? .red : Color.chartPercentageColor)
                }
            }
        }
    }
    
    func getPercentage() -> Double {
        guard let change = cryptoData.quote["USD"]?.percentChange24H else { return 0.0 }
        return Double(change)
    }
    
    func getPrice() -> String {
        guard let price = cryptoData.quote["USD"]?.price else { return "" }
        return String(format: "%.2f", price)
        
    }
    
}

//#Preview {
////    CryptoCell(icon:"",cryptoData: CryptoData())
//}
