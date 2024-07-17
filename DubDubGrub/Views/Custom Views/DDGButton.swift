//
//  DDGButton.swift
//  DubDubGrub
//
//  Created by Amish on 17/07/2024.
//

import SwiftUI

struct DDGButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .bold()
            .frame(width: 280.0, height: 44.0)
            .background(Color.brandPrimary)
            .foregroundStyle(.white)
            .cornerRadius(8.0)
    }
}
