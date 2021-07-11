//
//  Font.swift
//  WheaterApp
//
//  Created by Elton Jhony Romao de Oliveira on 10/07/21.
//

import Foundation
import SwiftUI

extension Font {
    
    static func medium(of size: Float) -> Font {
        return .system(size: CGFloat(size), weight: .medium, design: .default)
    }
    
    static func bold(of size: Float) -> Font {
        return .system(size: CGFloat(size), weight: .bold, design: .default)
    }
    
}
