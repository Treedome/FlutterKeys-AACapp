//
//  ContentView.swift
//  FlutterKeys
//
//  Created by Pheonix Clark on 6/27/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @StateObject var v4r = Variables.shared
    @Environment(\.undoManager) var undoManager
    
    var body: some View {
        ZStack{
                GeometryReader{
                    geometry in
                    VStack {
                        Message_Row()
                            .frame(height: geometry.size.height * 0.22)
                        Folder_Row()
                            .frame(height: geometry.size.height * 0.13)
                        Grammer_Row()
                            .frame(height: geometry.size.height * 0.03)
                        Spacer()
                            .frame(height: geometry.size.height * 0.01)
                        ZStack{
                            Boards()
                            
                            if v4r.Hist0ry {
                                History()
                            }
                        }
                    }
                }
                .ignoresSafeArea(.keyboard)
         
            if v4r.Expand {
                Expand_Page()
            }
            if v4r.Settings{
                GeometryReader{
                    geometry in
                    HStack{
                        Settings()
                            .frame(width: geometry.size.width * 0.5)
                        Spacer()
                    }
                    .background(Color.black.opacity(0.5))
                }
                .ignoresSafeArea(.keyboard)
            }
               
        }
    }
}

#Preview {
    ContentView()
}
