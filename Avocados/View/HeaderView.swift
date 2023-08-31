//
//  HeaderView.swift
//  Avocados
//
//  Created by Farangis on 28/08/23.
//

import SwiftUI

struct HeaderView: View {
    
    var header: Header
    
    @State private var offsetY = 220.0
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                }
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -60, y: offsetY)
            .onAppear {
                withAnimation(.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5) ) {
                    self.offsetY = 75.0
                }
            }
            .onDisappear {
                offsetY = 220.0
            }
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[1])
    }
}
