//
//  ContentView.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import SwiftUI

enum ProductOptions: Int {
    case CRYPTOCURRENCY = 1
    case NFT = 2
}

struct FilterOptionView: View {
    @Binding var selectedOption: Int
    
    init(selectedOption: Binding<Int>) {
        _selectedOption = selectedOption
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Button(action: {
                    
                }) {
                    Text("Cryptocurrency")
                        .font(Font.custom(AppFont.InterBold.rawValue, size: 20))
                        .foregroundColor(selectedOption == ProductOptions.CRYPTOCURRENCY.rawValue ? .black : Color.filterBtnColor)
                }
                
                Button(action: {
                    
                }) {
                    Text("NFT")
                        .font(Font.custom(AppFont.InterBold.rawValue, size: 20))
                    
                        .foregroundColor(selectedOption == ProductOptions.NFT.rawValue ? .black : Color.filterBtnColor)
                }
            }
        }
        .padding(.leading,20)
    }
}

#Preview {
    FilterOptionView(selectedOption: .constant(1))
}
