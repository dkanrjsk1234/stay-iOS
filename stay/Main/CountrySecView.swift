//
//  CountrySecView.swift
//  stay
//
//  Created by dgsw8th26 on 10/24/23.
//

import SwiftUI

struct CountrySecView: View {
    var body: some View {
        HStack(spacing:18) {
            Button {
                
            } label: {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 80, height: 35)
                    .background(Color(red: 0.93, green: 0.94, blue: 0.96))
                    .cornerRadius(7)
                    .overlay {
                        Text("아시아")
                            .foregroundColor(.black)
                    }
            }
            Button {
                
            } label: {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 65, height: 35)
                    .background(Color(red: 0.93, green: 0.94, blue: 0.96))
                    .cornerRadius(7)
                    .overlay {
                        Text("유럽")
                            .foregroundColor(.black)
                    }
            }
            Button {
                
            } label: {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 110, height: 35)
                    .background(Color(red: 0.93, green: 0.94, blue: 0.96))
                    .cornerRadius(7)
                    .overlay {
                        Text("남아메리카")
                            .foregroundColor(.black)
                    }
            }
            Button {
                
            } label: {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 110, height: 35)
                    .background(Color(red: 0.93, green: 0.94, blue: 0.96))
                    .cornerRadius(7)
                    .overlay {
                        Text("북아메리카")
                            .foregroundColor(.black)
                    }
            }
        }
    }
}

#Preview {
    CountrySecView()
}
