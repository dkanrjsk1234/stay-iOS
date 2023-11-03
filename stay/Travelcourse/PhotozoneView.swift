//
//  PhotozoneView.swift
//  stay
//
//  Created by dgsw8th26 on 10/31/23.
//

import SwiftUI

struct PhotozoneView: View {
    var body: some View {
        HStack(spacing:15) {
            ForEach (1..<6) { number in
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 120, height: 120)
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    PhotozoneView()
}
