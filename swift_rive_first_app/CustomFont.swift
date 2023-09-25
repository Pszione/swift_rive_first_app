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
    // note: this underscore bellow is optional. So we can ommit variable name and just type .title/.body
    func customFont(_ textStyle: TextStyle) -> some View {
        modifier(CustomFont(textStyle: textStyle))
    }
}

// My custom enum for styles
enum TextStyle {
    case title
    case body
}
