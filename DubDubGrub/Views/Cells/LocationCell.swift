//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Amish on 17/07/2024.
//

import SwiftUI

struct LocationCell: View {
    var body: some View {
        HStack {
            Image(.defaultSquareAsset)
                .resizable()
                .scaledToFit()
                .frame(width: 80.0, height: 80.0)
                .clipShape(Circle())
                .padding(.vertical, 8.0)
            VStack(alignment: .leading) {
                Text("Test Location Name")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                HStack {
                    AvatarView(size: 35.0)
                    AvatarView(size: 35.0)
                    AvatarView(size: 35.0)
                    AvatarView(size: 35.0)
                }
            }
            .padding(.leading)
        }
    }
}
