//
//  Settings.swift
//  FlutterKeys
//
//  Created by Pheonix Clark on 7/2/24.
//

import SwiftUI
import AVFoundation

struct Settings: View {
    @StateObject var v4r = Variables.shared
    var body: some View {
        GeometryReader{
            geometry in
            ZStack{
                Rectangle()
                    .foregroundStyle(Color.white)
                VStack{
                    HStack{
                        Button(action: {v4r.Settings = false}){
                            Image(.iClose)
                                .resizable()
                                .scaledToFit()
                                .padding(4)
                                .padding(.horizontal, 5)
                        }
                        .background(Color.black)
                        .cornerRadius(5)
                        .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                        .frame(height: geometry.size.height * 0.07)
                        .padding(5)
                        
                        Button(action: {v4r.Settings = false}){
                            Image(.iEdit)
                                .resizable()
                                .scaledToFit()
                                .padding(3)
                        }
                        .background(Color.black)
                        .cornerRadius(5)
                        .shadow(color: C0lors().light.opacity(1), radius: 0.5, y: 2)
                        .frame(height: geometry.size.height * 0.07)
                        Spacer()
                    }
                    List{
                        Section (header: Text("Voice")){
                            HStack{
                                Image(.iVoice)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.05)
                                    .padding(.vertical, 1)
                                Spacer()
                                    .frame(width: geometry.size.width * 0.01)
                                Picker("Voice", selection: $v4r.selectedVoice) {
                                    ForEach(v4r.Voices, id: \.self){ voice in
                                        Text(voice.name).tag(voice as AVSpeechSynthesisVoice?)
                                    }
                                }
                            }
                            HStack{
                                Image(.iRate)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.05)
                                    .padding(.vertical, 1)
                                Spacer()
                                    .frame(width: geometry.size.width * 0.01)
                                Text("Rate: \(v4r.r4te, specifier: "%.1f")")
                                Spacer()
                                    .frame(width: geometry.size.width * 0.05)
                                Slider(value: $v4r.r4te, in: 0.1...2.0, step: 0.1)
                                    .tint(.black)
                            }
                            HStack{
                                Image(.iPitch)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.05)
                                    .padding(.vertical, 1)
                                Spacer()
                                    .frame(width: geometry.size.width * 0.01)
                                Text("Pitch: \(v4r.pi7ch, specifier: "%.1f")")
                                Spacer()
                                    .frame(width: geometry.size.width * 0.045)
                                Slider(value: $v4r.pi7ch, in: 0.1...2.0, step: 0.1)
                                    .tint(.black)
                            }
                            HStack{
                                Image(.iTestVoice)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.06)
                                    .padding(.vertical, 1)
                                Spacer()
                                    .frame(width: geometry.size.width * 0.015)
                                Button(action: {
                                    let utterance = AVSpeechUtterance(string: "Is this my voice?")
                                    if let v0ice = v4r.selectedVoice {
                                        utterance.voice = v0ice
                                    }
                                    utterance.rate = v4r.r4te
                                    utterance.pitchMultiplier = v4r.pi7ch
                                    synth.speak(utterance)
                                }){
                                    Text("Test Voice")
                                }
                            }
                        }
                        Section(header: Text("Message Window")){
                            HStack{
                                Image(.iFontMW)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.06)
                                    .padding(.vertical, 1)
                                Picker("Font Design", selection: $v4r.FontDesign) {
                                    ForEach(F0ntDesign.allCases) { design in
                                        Text(design.rawValue.capitalized).tag(design)
                                    }
                                }
                            }
                            HStack{
                                Image(.iFontWeightMW)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.06)
                                    .padding(.vertical, 1)
                                Picker("Font Weight", selection: $v4r.FontWeight) {
                                    ForEach(F0ntWeight.allCases) { weight in
                                        Text(weight.rawValue.capitalized).tag(weight)
                                    }
                                }
                            }
                            HStack{
                                Image(.iFontSizeMW)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.06)
                                    .padding(.vertical, 1)
                                Text("Font Size: \(v4r.FontSize, specifier: "%.1f")")
                                Spacer()
                                    .frame(width: geometry.size.width * 0.05)
                                Slider(value: $v4r.FontSize, in: 10...50, step: 1)
                                    .tint(.black)
                            }
                            HStack{
                                Image(.iSampleMW)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.05)
                                    .padding(.vertical, 1)
                                Spacer()
                                    .frame(width: geometry.size.width * 0.015)
                                Text("Sample Text")
                                    .font(.system(size: v4r.FontSize, weight: v4r.FontWeight.weight, design: v4r.FontDesign.design))
                            }
                        }
                        Section(header: Text("Folder Row")){
                            HStack{
                                Image(.iFontFR)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.06)
                                    .padding(.vertical, 1)
                                Picker("Font Design", selection: $v4r.FontDesignFR) {
                                    ForEach(F0ntDesign.allCases) { design in
                                        Text(design.rawValue.capitalized).tag(design)
                                    }
                                }
                            }
                            HStack{
                                Image(.iFontWeightFR)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.06)
                                    .padding(.vertical, 1)
                                Picker("Font Weight", selection: $v4r.FontWeightFR) {
                                    ForEach(F0ntWeight.allCases) { weight in
                                        Text(weight.rawValue.capitalized).tag(weight)
                                    }
                                }
                            }
                            HStack{
                                Image(.iFontSizeFR)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.06)
                                    .padding(.vertical, 1)
                                Text("Font Size: \(v4r.FontSizeFR, specifier: "%.1f")")
                                Spacer()
                                    .frame(width: geometry.size.width * 0.05)
                                Slider(value: $v4r.FontSizeFR, in: 5...50, step: 1)
                                    .tint(.black)
                            }
                            HStack{
                                Image(.iSampleFR)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.05)
                                    .padding(.vertical, 1)
                                Spacer()
                                    .frame(width: geometry.size.width * 0.015)
                                Text("Sample Text")
                                    .font(.system(size: v4r.FontSizeFR, weight: v4r.FontWeightFR.weight, design: v4r.FontDesignFR.design))
                            }
                        }
                        Section(header: Text("Grammer Row")){
                            HStack{
                                Image(.iFontGR)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.05)
                                    .padding(.vertical, 1)
                                Picker("Font Design", selection: $v4r.FontDesignGR) {
                                    ForEach(F0ntDesign.allCases) { design in
                                        Text(design.rawValue.capitalized).tag(design)
                                    }
                                }
                            }
                            HStack{ 
                                Image(.iFontWeightGR)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.06)
                                    .padding(.vertical, 1)
                                Picker("Font Weight", selection: $v4r.FontWeightGR) {
                                    ForEach(F0ntWeight.allCases) { weight in
                                        Text(weight.rawValue.capitalized).tag(weight)
                                    }
                                }
                            }
                            HStack{
                                Image(.iSampleGR)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: geometry.size.height * 0.05)
                                    .padding(.vertical, 1)
                                Spacer()
                                    .frame(width: geometry.size.width * 0.015)
                                Text("Sample Text")
                                    .font(.system(size: 20, weight: v4r.FontWeightGR.weight, design: v4r.FontDesignGR.design))
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Settings()
}
