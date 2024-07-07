//
//  Folder Row.swift
//  FlutterKeys
//
//  Created by Pheonix Clark on 6/29/24.
//

import SwiftUI
import AVFoundation

struct Folder_Row: View {
@StateObject var v4r = Variables.shared
    var body: some View {
        GeometryReader{
            geometry in
            ZStack{
                Rectangle()
                    .fill(Color(C0lors().light))
                HStack{
                    Spacer()
                    
                    Button(action: {v4r.hideKeyboard()}){
                        VStack{
                            Image(.iLittleWords)
                                .resizable()
                                .scaledToFit()
                                .padding(.horizontal, 2)
                                .padding(.top, 3)
                            Text("Little Words")
                                .foregroundStyle(Color.black)
                                .font(.system(size: v4r.FontSizeFR, weight: v4r.FontWeightFR.weight, design: v4r.FontDesignFR.design))
                                .padding(.bottom, 3)
                                .padding(.horizontal,5)
                                .minimumScaleFactor(0.5)
                        }
                    } //Little words
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.08)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    .frame(height: geometry.size.height * 0.1)
                    Button(action: {v4r.hideKeyboard()}){
                        VStack{
                            Image(.iNouns)
                                .resizable()
                                .scaledToFit()
                                .padding(.top, 4)
                                .padding(.horizontal, 2)
                            Text("Nouns")
                                .foregroundStyle(Color.black)
                                .font(.system(size: v4r.FontSizeFR, weight: v4r.FontWeightFR.weight, design: v4r.FontDesignFR.design))
                                .padding(.bottom, 3)
                                .padding(.horizontal,3)
                                .minimumScaleFactor(0.5)
                        }
                    } //Nouns
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.08)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    Button(action: {v4r.hideKeyboard()}){
                        VStack{
                            Image(.iPronouns)
                                .resizable()
                                .scaledToFit()
                                .padding(.top, 4)
                                .padding(.horizontal, 2)
                            Text("Pronouns")
                                .foregroundStyle(Color.black)
                                .font(.system(size: v4r.FontSizeFR, weight: v4r.FontWeightFR.weight, design: v4r.FontDesignFR.design))
                                .padding(.bottom, 3)
                                .padding(.horizontal,3)
                                .minimumScaleFactor(0.5)
                        }
                    } //Pronouns
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.08)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    Button(action: {v4r.hideKeyboard()}){
                        VStack{
                            Image(.iVerbs)
                                .resizable()
                                .scaledToFit()
                                .padding(.top, 4)
                                .padding(.horizontal, 2)
                            Text("Verbs")
                                .foregroundStyle(Color.black)
                                .font(.system(size: v4r.FontSizeFR, weight: v4r.FontWeightFR.weight, design: v4r.FontDesignFR.design))
                                .padding(.bottom, 3)
                                .padding(.horizontal,3)
                                .minimumScaleFactor(0.5)
                        }
                    } //Verbs
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.08)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    
                    Spacer()
                    
                    Button(action: {v4r.hideKeyboard()}){
                        Image(.iPinned)
                            .resizable()
                            .scaledToFit()
                            .padding(4)
                            .padding(.horizontal, 2)
                        
                    } //pinned
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.06)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    Button(action: {}){
                        Image(.iStore)
                            .resizable()
                            .scaledToFit()
                            .padding(4)
                            .padding(.horizontal, 2)
                    } //store
                    .frame(width: geometry.size.width * 0.08)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    Button(action: {v4r.Hist0ry = true; v4r.hideKeyboard()}){
                        Image(.iHistory)
                            .resizable()
                            .scaledToFit()
                            .padding(4)
                            .padding(.horizontal, 2)
                    } //history
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.06)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    Spacer()
                    
                    Button(action: {v4r.hideKeyboard()}){
                        VStack{
                        Image(.iAdj)
                            .resizable()
                            .scaledToFit()
                            .padding(.top, 4)
                            .padding(.horizontal, 2)
                        Text("Adjectives")
                            .foregroundStyle(Color.black)
                            .font(.system(size: v4r.FontSizeFR, weight: v4r.FontWeightFR.weight, design: v4r.FontDesignFR.design))
                            .padding(.bottom, 3)
                            .padding(.horizontal,3)
                            .minimumScaleFactor(0.5)
                    }
                    } //Adj
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.08)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    Button(action: {v4r.hideKeyboard()}){
                        VStack{
                            Image(.iSocial)
                                .resizable()
                                .scaledToFit()
                                .padding(.top, 4)
                                .padding(.horizontal, 2)
                            Text("Social")
                                .foregroundStyle(Color.black)
                                .font(.system(size: v4r.FontSizeFR, weight: v4r.FontWeightFR.weight, design: v4r.FontDesignFR.design))
                                .padding(.bottom, 3)
                                .padding(.horizontal,3)
                                .minimumScaleFactor(0.5)
                        }
                    } //Social
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.08)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    Button(action: {v4r.hideKeyboard()}){
                        VStack{
                            Image(.iMyTopics)
                                .resizable()
                                .scaledToFit()
                                .padding(.top, 4)
                                .padding(.horizontal, 2)
                            Text("My Topics")
                                .foregroundStyle(Color.black)
                                .font(.system(size: v4r.FontSizeFR, weight: v4r.FontWeightFR.weight, design: v4r.FontDesignFR.design))
                                .padding(.bottom, 3)
                                .padding(.horizontal,3)
                                .minimumScaleFactor(0.5)
                        }
                    } //My Topics
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.08)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    Button(action: {v4r.hideKeyboard()}){
                        VStack{
                        Image(.iAdverbs)
                            .resizable()
                            .scaledToFit()
                            .padding(.top, 4)
                            .padding(.horizontal, 2)
                        Text("Adverbs")
                            .foregroundStyle(Color.black)
                            .font(.system(size: v4r.FontSizeFR, weight: v4r.FontWeightFR.weight, design: v4r.FontDesignFR.design))
                            .padding(.bottom, 3)
                            .padding(.horizontal,3)
                            .minimumScaleFactor(0.5)
                    }
                    } //Adverbs
                    .frame(height: geometry.size.height * 0.8)
                    .frame(width: geometry.size.width * 0.08)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Folder_Row()
}
