//
//  Grammer Row.swift
//  FlutterKeys
//
//  Created by Pheonix Clark on 6/30/24.
//

import SwiftUI
import AVFoundation

struct Grammer_Row: View {
@StateObject var v4r = Variables.shared
@ScaledMetric(relativeTo: .body) var fontSize: CGFloat = 13
    
    var body: some View {
        GeometryReader{
            geometry in
            
            HStack{
                Button(action: {}){
                        Image(.iNot)
                            .resizable()
                            .scaledToFit()
                        Text("Not")
                            .foregroundStyle(Color.black)
                            .font(.system(size: fontSize, weight: v4r.FontWeightGR.weight, design: v4r.FontDesignGR.design))
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                }
                .frame(width: geometry.size.width * 0.085)
                Rectangle()
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.002)
                
                    Button(action: {}){
                            Image(.iPlural)
                                .resizable()
                                .scaledToFit()
                            Text("Plural")
                                .foregroundStyle(Color.black)
                                .font(.system(size: fontSize, weight: v4r.FontWeightGR.weight, design: v4r.FontDesignGR.design))
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                    }
                    .frame(width: geometry.size.width * 0.085)
                    Rectangle()
                        .frame(height: geometry.size.height * 0.8)
                        .frame(width: geometry.size.width * 0.002)
                
                    Button(action: {}){
                            Image(.iEd)
                                .resizable()
                                .scaledToFit()
                            Text("Past Participle")
                                .foregroundStyle(Color.black)
                                .font(.system(size: fontSize, weight: v4r.FontWeightGR.weight, design: v4r.FontDesignGR.design))
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                    }
                    .frame(width: geometry.size.width * 0.085)
                    Rectangle()
                        .frame(height: geometry.size.height * 0.8)
                        .frame(width: geometry.size.width * 0.002)
                
                    Button(action: {}){
                            Image(.iIng)
                                .resizable()
                                .scaledToFit()
                            Text("Present Participle")
                                .foregroundStyle(Color.black)
                                .font(.system(size: fontSize, weight: v4r.FontWeightGR.weight, design: v4r.FontDesignGR.design))
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                    }
                    .frame(width: geometry.size.width * 0.085)
                    Rectangle()
                        .frame(height: geometry.size.height * 0.8)
                        .frame(width: geometry.size.width * 0.002)
                
                    Button(action: {}){
                            Image(.iPosessive)
                                .resizable()
                                .scaledToFit()
                            Text("Posessive")
                                .foregroundStyle(Color.black)
                                .font(.system(size: fontSize, weight: v4r.FontWeightGR.weight, design: v4r.FontDesignGR.design))
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                    }
                    .frame(width: geometry.size.width * 0.085)
                    Rectangle()
                        .frame(height: geometry.size.height * 0.8)
                        .frame(width: geometry.size.width * 0.002)
                
                    Button(action: {}){
                            Image(.iEr)
                                .resizable()
                                .scaledToFit()
                            Text("Comparitive")
                                .foregroundStyle(Color.black)
                                .font(.system(size: fontSize, weight: v4r.FontWeightGR.weight, design: v4r.FontDesignGR.design))
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                    }
                    .frame(width: geometry.size.width * 0.085)
                    Rectangle()
                        .frame(height: geometry.size.height * 0.8)
                        .frame(width: geometry.size.width * 0.002)
                
                    Button(action: {}){
                            Image(.iPlural)
                                .resizable()
                                .scaledToFit()
                            Text("3rd Person Past Tense")
                                .foregroundStyle(Color.black)
                                .font(.system(size: fontSize, weight: .bold, design: .default))
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                    }
                    .frame(width: geometry.size.width * 0.085)
                    Rectangle()
                        .frame(height: geometry.size.height * 0.8)
                        .frame(width: geometry.size.width * 0.002)
                
                    Button(action: {}){
                            Image(.iPast)
                                .resizable()
                                .scaledToFit()
                            Text("Past Tense")
                                .foregroundStyle(Color.black)
                                .font(.system(size: fontSize, weight: v4r.FontWeightGR.weight, design: v4r.FontDesignGR.design))
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                    }
                    .frame(width: geometry.size.width * 0.085)
                    Rectangle()
                        .frame(height: geometry.size.height * 0.8)
                        .frame(width: geometry.size.width * 0.002)
                
                    Button(action: {}){
                            Image(.iRoot)
                                .resizable()
                                .scaledToFit()
                            Text("Root")
                                .foregroundStyle(Color.black)
                                .font(.system(size: fontSize, weight: v4r.FontWeightGR.weight, design: v4r.FontDesignGR.design))
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                    }
                    .frame(width: geometry.size.width * 0.085)
                    Rectangle()
                        .frame(height: geometry.size.height * 0.8)
                        .frame(width: geometry.size.width * 0.002)
                
                    Button(action: {}){
                            Image(.iNext)
                                .resizable()
                                .scaledToFit()
                    }
                    .frame(width: geometry.size.width * 0.085)
            }
        }
    }
}

#Preview {
    Grammer_Row()
}
