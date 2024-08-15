//
//  AvatarView.swift
//  DubDubGrub
//
//  Created by Amish on 17/07/2024.
//

import SwiftUI

struct AvatarView: View {
    var size: CGFloat
    
    var body: some View {
        Image(.defaultAvatar)
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}
