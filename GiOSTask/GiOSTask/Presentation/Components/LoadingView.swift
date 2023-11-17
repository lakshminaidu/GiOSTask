//
//  SwiftUIView.swift
//  GiOSTask
//
//  Created by iSHIKA on 17/11/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView() {
            Text("Loading...")
                .foregroundColor(Color.blue)
                .bold()
        }
        .progressViewStyle(CircularProgressViewStyle(tint: Color.blue))
        .accessibilityLabel("LoadingView")
    }
}


#Preview {
    LoadingView()
}
