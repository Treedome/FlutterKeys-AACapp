//
//  Expand Page.swift
//  FlutterKeys
//
//  Created by Pheonix Clark on 7/1/24.
//

import SwiftUI
import AVFoundation

struct Expand_Page: View {
    @StateObject var v4r = Variables.shared
    
    var body: some View {
        if v4r.Flip {
            Flip()
        }
        else {
            GeometryReader {
                geometry in
                ZStack{
                    Rectangle()
                        .foregroundStyle(Color(C0lors().dark))
                    VStack{
                        ZStack{
                            Rectangle()
                                .foregroundStyle(Color.white)
                            Text(v4r.message)
                                .font(.system(size: v4r.ExpandedSize))
                        }
                        Spacer()
                            .frame(height: geometry.size.height * 0.03)
                        HStack{
                            Button(action: {v4r.Expand = false}){
                                ZStack{
                                    Rectangle()
                                        .foregroundStyle(Color.black)
                                        .cornerRadius(7)
                                        .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                                    Image(.iBack)
                                        .resizable()
                                        .scaledToFit()
                                        .padding(7)
                                        .colorInvert()
                                }
                            }
                            .frame(width: geometry.size.width * 0.076)
                            Spacer()
                                .frame(width: geometry.size.width * 0.03)
                            ZStack{
                                Rectangle()
                                    .foregroundStyle(Color.black)
                                    .cornerRadius(5)
                                    .shadow(color: Color.white.opacity(1), radius: 0.5, y: 2)
                                Slider(value: $v4r.ExpandedSize, in: 10...200)
                                    .tint(.white)
                                    .padding(7)
                                    .shadow(color: Color.white.opacity(1), radius: 0.5, y: 2)
                            }
                            Spacer()
                                .frame(width: geometry.size.width * 0.03)
                            Button(action: {v4r.Flip = true}){
                                ZStack{
                                    Rectangle()
                                        .foregroundStyle(Color.black)
                                        .cornerRadius(7)
                                        .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                                    Image(.iFlip)
                                        .resizable()
                                        .scaledToFit()
                                        .colorInvert()
                                }
                            }
                            .frame(width: geometry.size.width * 0.05)
                        }
                        .frame(height: geometry.size.height * 0.085)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    Expand_Page()
}
