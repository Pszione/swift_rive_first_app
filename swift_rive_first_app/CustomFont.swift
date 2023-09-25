//
//  CustomFont.swift
//  swift_rive_first_app
//
//  Created by Pedro Santos on 25/09/23.
//

import SwiftUI

struct CustomFont: ViewModifier {
    var textStyle: TextStyle
    
    func body(content: Content) -> some View {
        content.font(.custom("Inter Regular", size: 17, relativeTo: .body))
    }
}

// This extension makes ir easier to add modifier to the View
extension View {
    func customFont(textStyle: TextStyle) -> some View {
        modifier(CustomFont(textStyle: textStyle))
    }
}

// My custom enum for styles
enum TextStyle {
    case title
    case body
}
