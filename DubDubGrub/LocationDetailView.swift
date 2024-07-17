//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Amish on 16/07/2024.
//

import SwiftUI

struct LocationDetailView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        VStack(spacing: 16.0) {
            Image(.defaultBannerAsset)
                .resizable()
                .scaledToFill()
                .frame(height: 120.0)
            HStack {
                Label("123 Main Street", systemImage: "mappin.and.ellipse")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            
            Text("This is a test description. This is a test description. This is a test description. This is a test description.")
                .lineLimit(3)
                .minimumScaleFactor(0.75)
//                .frame(height: 70.0)
                .padding(.horizontal)
            
            HStack(spacing: 20.0) {
                LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                Link(destination: URL(string: "https://www.apple.com")!, label: {
                    LocationActionButton(color: .brandPrimary, imageName: "network")
                })
                LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 80.0)
            .background(
                Capsule()
                    .fill(Color(.secondarySystemBackground))
            )
            .padding(.horizontal)
            
            Text("Who's Here?")
                .bold()
                .font(.title2)
            
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    FirstNameAvatarView(firstName: "Amish")
                    FirstNameAvatarView(firstName: "Amish")
                    FirstNameAvatarView(firstName: "Amish")
                    FirstNameAvatarView(firstName: "Amish")
                    FirstNameAvatarView(firstName: "Amish")
                    FirstNameAvatarView(firstName: "Amish")
                })
            }
            Spacer()
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        LocationDetailView()
    }
}

struct LocationActionButton: View {
    var color: Color
    var imageName: String
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: imageName)
                .imageScale(.large)
                .foregroundStyle(.white)
        }
        .frame(width: 60.0, height: 60.0)
        .background(
            Circle()
                .fill(color)
        )
    }
}

struct FirstNameAvatarView: View {
    var firstName: String
    var body: some View {
        VStack {
            AvatarView(size: 64.0)
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}
