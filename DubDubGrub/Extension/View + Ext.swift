//
//  CustomModifiers.swift
//  DubDubGrub
//
//  Created by Amish on 17/07/2024.
//

import SwiftUI

struct ProfileNameText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32.0, weight: .bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
    }
}

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}

