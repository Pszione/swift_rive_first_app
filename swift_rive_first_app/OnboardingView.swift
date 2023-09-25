//
//  OnboardingView.swift
//  swift_rive_first_app
//
//  Created by Pedro Santos on 25/09/23.
//

import SwiftUI
import RiveRuntime

// note: ctrl + I to format/ident code

struct OnboardingView: View {
    let button = RiveViewModel(fileName: "button")
    
    var body: some View {
        ZStack {
            background
            
            VStack {
                Text("Learn design & code")
                    .font(.custom("Poppins Bold", size: 60, relativeTo: .largeTitle))
                    .frame(width: 260, alignment: .leading)
                // note: .relativeTo with adapt based on accesibility size settings
                Text("Don't skip design. Learn design and code, by building real apps with Flutter and Swift. Complete courses about the best tools.")
                    .customFont(.body)
//                    .font(.headline)
//                    .modifier(customFont())
//                    .customFont()
                
                button.view()
                    .frame(width: 236, height: 64)
                    .overlay(
                        Label("Start the course", systemImage: "arrow.forward")
                        .offset(x: 4, y:4)
                        .font(.headline)
                    )
                    .background(
                        Color.black
                            .cornerRadius(30)
                            .blur(radius: 10)
                            .opacity(0.3)
                            .offset(y: 10)
                    )
                    .onTapGesture {
                        button.play(animationName: "active")
                }
            }
            
        }
    }
    
    var background: some View {
        RiveViewModel(fileName: "shapes").view()
            .ignoresSafeArea()
            .blur(radius: 30)
            .background(
                Image("Spline")
                    .blur(radius: 50)
                    .offset(x: 200, y: 100)
            
        )
    }
}

#Preview {
    OnboardingView()
}
