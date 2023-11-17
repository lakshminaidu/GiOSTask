//
//  ContentView.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import SwiftUI
import SwiftUICharts

struct ChartView: View {
    
    var body: some View {
        VStack {
            ChartInfoView()
            FilledLineChart(chartData: lineChartData)
                .frame(height: 60)
        }
        .background(Color.chartBackgroundColor)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    ChartView()
}
