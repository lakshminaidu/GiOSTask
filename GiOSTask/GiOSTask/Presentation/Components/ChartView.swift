//
//  ContentView.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import SwiftUI
import SwiftUICharts

struct ChartView: View {
    var cryptoData: CryptoData
    var cryptoIcons: [String: CryptoIconModel]
    var body: some View {
        VStack {
            ChartInfoView(cryptoData: cryptoData,cryptoIcons: cryptoIcons )
            FilledLineChart(chartData: lineChartData)
                .frame(height: 60)
        }
        .background(Color.chartBackgroundColor)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    ChartView(cryptoData: CryptoData.mockCoin, cryptoIcons: ["1": CryptoIconModel(logo: ""), "2": CryptoIconModel(logo: "")]).padding(.horizontal, 30)
}
