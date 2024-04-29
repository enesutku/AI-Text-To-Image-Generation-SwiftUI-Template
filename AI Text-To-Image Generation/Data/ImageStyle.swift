// Created by Enes UTKU

import SwiftUI

enum ImageStyle: String, CaseIterable {
    case surrealism
    case realism
    case threeDRender
    case abstract
    case retro
    
    var title: String {
        switch self {
        case .surrealism:
            return "Surrealism"
        case .realism:
            return "Realism"
        case .threeDRender:
            return "3D Render"
        case .abstract:
            return "Abstract"
        case .retro:
            return "Retro"
        }
    }
    
    var rawValue: String {
        switch self {
        case .surrealism:
            return "surrealism"
        case .realism:
            return "realism"
        case .threeDRender:
            return "threedrender"
        case .abstract:
            return "abstract"
        case .retro:
            return "retro"
        }
    }
}
