//
//  ContentView.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import SwiftUI

struct ChartInfoView: View {
    // MARK: Later on we can use a object to pass the cryptocurrency and it's data to be shared here.
    var body: some View {
        HStack {
            Image(AppIcons.btcIc.rawValue)
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 0))
            VStack {
                HStack {
                    TextElement(text: "BTC", fontSize: 18, font: AppFont.InterBold.rawValue, alignment: .leading)
                    
                    Spacer()
                    TextElement(text: "$55,000 USD", fontSize: 16, font: AppFont.InterBold.rawValue, alignment: .trailing)
                        .padding(.trailing,20)
                    
                }
                HStack {
                    TextElement(text: "Bitcoin", fontSize: 13, font: AppFont.InterSemiBold.rawValue, alignment: .leading)
                    Spacer()
                    TextElement(text: "+2.5%    ", fontSize: 13, font: AppFont.InterSemiBold.rawValue, alignment: .trailing)
                        .padding(.trailing,20)
                        .foregroundColor(Color.chartPercentageColor)
                }
            }
        }
    }
}

#Preview {
    ChartInfoView()
}
