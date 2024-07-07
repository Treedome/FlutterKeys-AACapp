//
//  FontWeightCases.swift
//  FlutterKeys
//
//  Created by Pheonix Clark on 7/6/24.
//

import SwiftUI

enum F0ntWeight: String, CaseIterable, Identifiable {
    case ultraLight, thin, light, regular, medium, semibold, bold, heavy, black
    
    var id: String { self.rawValue }
    
    var weight: Font.Weight {
        switch self {
        case .ultraLight: return .ultraLight
        case .thin: return .thin
        case .light: return .light
        case .regular: return .regular
        case .medium: return .medium
        case .semibold: return .semibold
        case .bold: return .bold
        case .heavy: return .heavy
        case .black: return .black
        }
    }
}

enum F0ntDesign: String, CaseIterable, Identifiable {
    case rounded, monospaced, serif, regular
    
    var id: String {self.rawValue}
    
    var design: Font.Design {
        switch self {
        case .regular: return .default
        case .rounded: return .rounded
        case .monospaced: return .monospaced
        case .serif: return .serif
        }
    }
}
