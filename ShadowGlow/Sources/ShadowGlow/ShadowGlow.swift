//
//  ShadowGlow.swift
//  ShadowGlow
//
//  Created by Juan Williman on 12/22/25.
//

import SwiftUI

// MARK: - Shadow Glow

struct ShadowGlow: ViewModifier {
    
    // MARK: - Properties
    
    var opacity: CGFloat
    var blurRadius: CGFloat
    var scale: CGFloat
    var x: CGFloat
    var y: CGFloat
    
    var showInDarkMode: Bool
    
    @Environment(\.colorScheme) var colorScheme
    
    // MARK: - Content
    
    func body(content: Content) -> some View {
        content
            .background {
                if colorScheme == .light || (colorScheme == .dark && showInDarkMode) {
                    content
                        .offset(x: x, y: y)
                        .opacity(opacity)
                        .blur(radius: blurRadius)
                        .scaleEffect(scale)
                }
            }
    }
}

// MARK: - View Modifier

extension View {
    func shadowGlow(
        opacity: CGFloat = 0.6,
        blurRadius: CGFloat = 13,
        scale: CGFloat = 0.95,
        x: CGFloat = 0.0,
        y: CGFloat = 20.0,
        showInDarkMode: Bool = true
    ) -> some View {
        modifier(ShadowGlow(
            opacity: opacity,
            blurRadius: blurRadius,
            scale: scale,
            x: x,
            y: y,
            showInDarkMode: showInDarkMode
        ))
    }
}

// MARK: - Preview

#Preview {
    VStack(spacing: 0) {
        Color.green
        Color.green
        Color.green
        Color.yellow
        Color.orange
        Color.red
        Color.purple
        Color.blue
    }
    .frame(height: 300)
    .mask {
        Image(systemName: "apple.logo")
            .resizable()
            .scaledToFit()
    }
    .shadowGlow()
}
