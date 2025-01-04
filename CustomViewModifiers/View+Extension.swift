//
//  View+Extensions.swift
//  CustomViewModifiersAndStyles
//
//  Created by Leon Chamoun on 04.01.25.
//

import SwiftUI

extension View {
    // MARK: - View Modifiers
    /// Functions for creating custom view modifiers.
    /// Source: https://developer.apple.com/documentation/swiftui/viewmodifier
    
    /// Applies a platform-specific navigation modifier.
    ///
    /// This function adds a modifier to handle navigation behavior based on the platform (iOS or macOS).
    ///
    /// - Parameters:
    ///   - isPresented: A binding that determines whether the destination view is presented.
    ///   - destination: A closure that creates the destination view.
    /// - Returns: A view with the platform-specific navigation behavior applied.
    func specificNavigation<Destination: View>(isPresented: Binding<Bool>,
                                               destination: @escaping () -> Destination) -> some View {
        modifier(PlatformSpecificNavigationModifier(isPresented: isPresented, destination: destination))
    }
    
    /// Adds a press effect to the view.
    ///
    /// This function applies a modifier that visually indicates when a view is pressed.
    ///
    /// - Parameter isPressed: A Boolean value indicating whether the view is being pressed.
    /// - Returns: A view with the press effect applied.
    func pressEffect(isPressed: Bool) -> some View {
        modifier(PressEffectModifier(isPressed: isPressed))
    }
    
    /// Adds a highlight effect when the view is hovered over.
    ///
    /// This function applies a modifier that visually highlights the view when the user's pointer hovers over it.
    ///
    /// - Parameter isHovered: A binding that tracks whether the view is currently hovered over.
    /// - Returns: A view with the highlight effect applied.
    func highlightEffect(isHovered: Binding<Bool>) -> some View {
        modifier(HighlightEffectModifier(isHovered: isHovered))
    }
}
