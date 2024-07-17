//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Amish on 16/07/2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var companyName: String = ""
    @State private var bio: String = ""
    
    var body: some View {
        VStack {
            HStack(spacing: 16.0) {
                ZStack {
                    AvatarView(size: 84.0)
                    editImage
                }
                .padding(.leading, 12.0)
                VStack(spacing: 1.0) {
                    TextField("First Name", text: $firstName)
                        .profileNameStyle()
                    TextField("Last Name", text: $lastName)
                        .profileNameStyle()
                    TextField("Company Name", text: $companyName)
                }
                .padding(.trailing, 16.0)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 130.0)
            .background(
                RoundedRectangle(cornerRadius: 12.0, style: .continuous)
                    .fill(Color(.secondarySystemBackground))
            )
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 8.0) {
                charactersRemain
                TextEditor(text: $bio)
                    .frame(height: 100.0)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8.0, style: .continuous)
                            .stroke(Color.secondary, lineWidth: 1.0)
                    }
                    .tint(.brandPrimary)
            }
            .padding(.horizontal, 20.0)
            Spacer()
            Button {
                
            } label: {
                DDGButton(title: "Create Profile")
            }
        }
        .navigationTitle("Profile")
    }
}

#Preview {
    NavigationStack {
        ProfileView()
    }
}

extension ProfileView {
    private var editImage: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .fontWeight(.bold)
            .frame(width: 14.0, height: 14.0)
            .foregroundStyle(.white)
            .offset(y: 30.0)
    }
    
    private var charactersRemain: some View {
        Text("Bio: ")
            .font(.callout)
            .foregroundStyle(.secondary)
        +
        Text("\(100 - bio.count)")
            .bold()
            .font(.callout)
            .foregroundStyle(bio.count <= 100 ? .brandPrimary : Color(.systemPink))
        +
        Text(" Characters Remain")
            .font(.callout)
            .foregroundStyle(.secondary)
    }
}

