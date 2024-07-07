//
//  History.swift
//  FlutterKeys
//
//  Created by Pheonix Clark on 7/7/24.
//

import SwiftUI

struct History: View {
    @Environment(\.undoManager) var undoManager
    @StateObject var v4r = Variables.shared
    
    var body: some View {
        
        GeometryReader{
            geometry in
            ZStack{
                Rectangle()
                    .colorInvert()
                ScrollView{
                    HStack{
                        Spacer()
                        VStack {
                            Spacer()
                                .frame(height: geometry.size.height * 0.14)
                            
                            ForEach((0..<v4r.submittedTexts.count).reversed(), id: \.self) { index in
                                let Submittedtext = v4r.submittedTexts[index]
                                Button(action: {
                                    v4r.appendText(Submittedtext)
                                }) {
                                    Text(Submittedtext)
                                        .frame(width: min(max(geometry.size.width * 0.2576), geometry.size.width * 0.8024)
                                        .padding(.init(top: 10, leading: 15, bottom: 10, trailing: 15))
                                        .background(C0lors().light)
                                        .foregroundColor(.black)
                                        .cornerRadius(5)
                                        .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                                }
                                .frame(height: geometry.size.height * 0.182)
                                Spacer()
                                    .frame(height: geometry.size.height * 0.027)
                            }
                            Spacer()
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    History()
}
