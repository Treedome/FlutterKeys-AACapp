//
//  Boards.swift
//  FlutterKeys
//
//  Created by Pheonix Clark on 7/1/24.
//

import SwiftUI
import AVFoundation

struct Boards: View {
    @Environment(\.undoManager) var undoManager
    
    @ScaledMetric(relativeTo: .body) var folderSize: CGFloat = 20
    @ScaledMetric(relativeTo: .body) var fontSize: CGFloat = 15
    
    var body: some View {
        GeometryReader{
            geometry in
            
            VStack{
                Spacer()
                    .frame(height: geometry.size.height * 0.02)
                HStack{
                    Spacer()
                        .frame(width: geometry.size.width * 0.009)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(5)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            HStack{
                                Image(.iAddSmlFolder)
                                    .resizable()
                                    .scaledToFit()
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: folderSize))
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.5)
                            }
                        }
                    }
                        .frame(width: geometry.size.width * 0.14)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(5)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            HStack{
                                Image(.iAddFolder)
                                    .resizable()
                                    .scaledToFit()
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: folderSize))
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.5)
                            }
                        }
                    }
                        .frame(width: geometry.size.width * 0.225)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(5)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            HStack{
                                Image(.iAddFolder)
                                    .resizable()
                                    .scaledToFit()
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: folderSize))
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.5)
                            }
                        }
                    }
                        .frame(width: geometry.size.width * 0.225)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(5)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            HStack{
                                Image(.iAddFolder)
                                    .resizable()
                                    .scaledToFit()
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: folderSize))
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.5)
                            }
                        }
                    }
                        .frame(width: geometry.size.width * 0.225)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(5)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            HStack{
                                Image(.iAddSmlFolder)
                                    .resizable()
                                    .scaledToFit()
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: folderSize))
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.5)
                            }
                        }
                    }
                        .frame(width: geometry.size.width * 0.14)
                    Spacer()
                } //row 0
                    .frame(height: geometry.size.height * 0.12)
                Spacer()
                    .frame(height: geometry.size.height * 0.027)
                HStack{
                    Spacer()
                        .frame(width: geometry.size.width * 0.0075)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0148)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0148)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0148)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0148)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0148)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0148)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0148)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0148)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0148)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0148)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                } //row 1
                    .frame(height: geometry.size.height * 0.182)
                Spacer()
                    .frame(height: geometry.size.height * 0.027)
                HStack{ //row 2
                    Spacer()
                        .frame(width: geometry.size.width * 0.044)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.014)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.014)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.014)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.014)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.014)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.014)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.014)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.014)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.045)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                } //row 2
                    .frame(height: geometry.size.height * 0.182)
                Spacer()
                    .frame(height: geometry.size.height * 0.027)
                HStack{ //row 3
                    Spacer()
                        .frame(width: geometry.size.width * 0.007)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0125)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0125)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0125)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0125)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0125)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0125)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.013)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0125)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.0125)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                        .frame(width: geometry.size.width * 0.025)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                } //row 3
                    .frame(height: geometry.size.height * 0.182)
                Spacer()
                    .frame(height: geometry.size.height * 0.027)
                HStack{ //row 4
                        Spacer()
                            .frame(width: geometry.size.width * 0.007)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                        Spacer()
                            .frame(width: geometry.size.width * 0.0125)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                        Spacer()
                            .frame(width: geometry.size.width * 0.0125)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                        Spacer()
                            .frame(width: geometry.size.width * 0.017)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                        Spacer()
                            .frame(width: geometry.size.width * 0.017)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                        Spacer()
                            .frame(width: geometry.size.width * 0.017)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                        Spacer()
                            .frame(width: geometry.size.width * 0.017)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                        Spacer()
                            .frame(width: geometry.size.width * 0.017)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                        Spacer()
                            .frame(width: geometry.size.width * 0.04)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                        Spacer()
                            .frame(width: geometry.size.width * 0.05)
                    Button(action: {}){
                        ZStack{
                            Rectangle()
                                .foregroundStyle(C0lors().light)
                                .cornerRadius(7)
                                .shadow(color: C0lors().dark.opacity(1), radius: 0.5, y: 2)
                            VStack{
                                Text("")
                                    .foregroundStyle(Color.black)
                                    .font(.system(size: fontSize))
                                    .minimumScaleFactor(0.5)
                                Spacer()
                                    .frame(height: 0)
                                Image(.iAddButton)
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding(5)
                        }
                    }
                        .frame(width: geometry.size.width * 0.076)
                    Spacer()
                } //row 4
                    .frame(height: geometry.size.height * 0.182)
            }
        }
    }
}

#Preview {
    Boards()
}
