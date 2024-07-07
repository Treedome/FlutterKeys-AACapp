//
//  Message Row.swift
//  FlutterKeys
//
//  Created by Pheonix Clark on 6/27/24.
//

import SwiftUI
import AVFoundation

struct Message_Row: View {
    @FocusState var isTextFieldFocused: Bool
    @StateObject var v4r = Variables.shared
    @Environment(\.undoManager) var undoManager

    
    var body: some View {
        
        GeometryReader{
            geometry in
            ZStack{
                Rectangle()
                    .foregroundStyle(Color(C0lors().dark))
                VStack{
                    Spacer()
                    HStack{
                        VStack (spacing: 5){
                            Button(action: {v4r.Settings = true;  v4r.hideKeyboard()}){
                                Image(.iSettings)
                                    .resizable()
                                    .scaledToFit()
                                    .padding(4)
                                    .padding(.horizontal, 5)
                            }
                            .background(Color.black)
                            .cornerRadius(5)
                            .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                            
                            Button(action: {}){
                                Image(.iAdd)
                                    .resizable()
                                    .scaledToFit()
                                    .padding(4)
                                    .padding(.horizontal, 4)
                            }
                            .background(Color.black)
                            .cornerRadius(5)
                            .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                            
                            Button(action: {v4r.hideKeyboard(); v4r.Expand = true}){
                                Image(.iExpand)
                                    .resizable()
                                    .scaledToFit()
                                    .padding(4)
                                    .padding(.horizontal, 2)
                            }
                            .background(Color.black)
                            .cornerRadius(5)
                            .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                        } //left messsage window
                        .padding(.leading, 10)
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                            VStack{
                                TextField("Message Window...", text: Binding(
                                    get: { v4r.message },
                                    set: { newValue in
                                        v4r.setText(newValue)
                                        v4r.message = newValue
                                    }
                                ), axis: .vertical)
                                    .padding(10)
                                    .frame(minHeight: geometry.size.height * 0.10)
                                    .focused($isTextFieldFocused)
                                    .font(.system(size: v4r.FontSize, weight: v4r.FontWeight.weight, design: v4r.FontDesign.design))
                                    .onChange(of: v4r.message) { oldValue, newValue in
                                        if let lastCharacter = newValue.last, lastCharacter == "\n" {
                                            v4r.message.removeLast()
                                            v4r.doSubmit()
                                        }
                                    }
                                Spacer()
                            }
                        } //message window
                        .padding(.trailing, 5)
                        .onTapGesture {
                            isTextFieldFocused = true
                        }
                        VStack{
                            HStack{
                                
                                Button(action: {v4r.setText("")
                                }){
                                    Image(.iClear)
                                        .resizable()
                                        .scaledToFit()
                                        .padding(4)
                                } //clear
                                .background(Color.black)
                                .cornerRadius(5)
                                .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                             
                                Button(action: {}){
                                    Image(.iSearch)
                                        .resizable()
                                        .scaledToFit()
                                        .padding(4)
                                        .padding(.horizontal, 2)
                                    
                                } //search
                                .background(Color.black)
                                .cornerRadius(5)
                                .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                                Button(action: {undoManager?.undo()}){
                                    Image(.iUndo)
                                        .resizable()
                                        .scaledToFit()
                                        .padding(4)
                                } //undo
                                .disabled(!(undoManager?.canUndo ?? false))
                                .background(Color.black)
                                .cornerRadius(5)
                                .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                                
                            }
                            .frame(height: geometry.size.height * 0.35)
                            
                            HStack{
                                Spacer()
                                    .frame(width: geometry.size.width * 0.02)
                                Button(action: {v4r.rewind()}){
                                    Image(.iRewind)
                                        .resizable()
                                        .scaledToFit()
                                        .padding(8)
                                        .colorInvert()
                                    
                                } //rewind
                                .background(Color.black)
                                .cornerRadius(5)
                                .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                                
                                ZStack{
                                    if v4r.Pause {
                                        Button(action: {v4r.pause()}){
                                            Image(.iPause)
                                                .resizable()
                                                .scaledToFit()
                                                .padding(4)
                                    }
                                    .background(Color.black)
                                    .cornerRadius(5)
                                    .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)}
                                    if v4r.Play {
                                        Button(action: {v4r.doSubmit()}){
                                            Image(.iPlay)
                                                .resizable()
                                                .scaledToFit()
                                                .padding(4)
                                        }
                                        .background(Color.black)
                                        .cornerRadius(5)
                                        .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)}
                                    if v4r.resume {
                                        Button(action: {v4r.unPause()}){
                                            Image(.iPlay)
                                                .resizable()
                                                .scaledToFit()
                                                .padding(4)
                                        }
                                        .background(Color.black)
                                        .cornerRadius(5)
                                        .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)}
                                }
                                Spacer()
                                    .frame(width: geometry.size.width * 0.02)
                                Button(action: {undoManager?.redo()}){
                                    Image(.iReDo)
                                        .resizable()
                                        .scaledToFit()
                                        .padding(4)
                                } //redo
                                .disabled(!(undoManager?.canRedo ?? false))
                                .background(Color.black)
                                .cornerRadius(5)
                                .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                            }
                            .frame(height: geometry.size.height * 0.35)
                            
                        }
                        .padding(.trailing, 10)
                    }
                    Spacer()
                }
            }
        }
        .onAppear {
            v4r.undoManager = undoManager
        }
    }
}

#Preview {
    Message_Row()
}
