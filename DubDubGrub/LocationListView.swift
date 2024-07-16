//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Amish on 16/07/2024.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<10, id:\.self) { _ in
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
            .listStyle(.plain)
            .navigationTitle("Grub Spots")
        }
    }
}

#Preview {
    LocationListView()
}

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
