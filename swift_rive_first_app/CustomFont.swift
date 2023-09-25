//
//  CustomFont.swift
//  swift_rive_first_app
//
//  Created by Pedro Santos on 25/09/23.
//

import SwiftUI

struct CustomFont: ViewModifier {
    var textStyle: TextStyle
    
    var name: String {
        switch textStyle {
        case .title:
            return "Poppins Bold"
        case .body:
            return "Inter Regular"
        }
    }
    
    var size: CGFloat {
        switch textStyle {
        case .title:
            return 28
        case .body:
            return 17
        }
    }
    
    var relative: Font.TextStyle{
        switch textStyle {
        case .title:
            return .title
        case .body:
            return .body
        }
    }
    
    func body(content: Content) -> some View {
        // note: option + click to see class constructor variables
        content.font(.custom(name, size: size, relativeTo: relative))
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
