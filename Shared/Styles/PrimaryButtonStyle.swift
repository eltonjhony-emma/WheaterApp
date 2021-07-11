//
//  PrimaryButtonStyle.swift
//  WheaterApp
//
//  Created by Elton Jhony Romao de Oliveira on 10/07/21.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.bold(of: 20))
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 280, height: 50)
            .background(Color.body)
            .cornerRadius(10.0)
            .padding()
    }
    
}
