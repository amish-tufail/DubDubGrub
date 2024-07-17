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
                    Image(systemName: "square.and.pencil")
                        .resizable()
                        .fontWeight(.bold)
                        .frame(width: 14.0, height: 14.0)
                        .foregroundStyle(.white)
                        .offset(y: 30.0)
                }
                .padding(.leading, 12.0)
                VStack {
                    TextField("First Name", text: $firstName)
                        .font(.system(size: 32.0, weight: .bold))
                        .lineLimit(1)
                        .minimumScaleFactor(0.75)
                    TextField("Last Name", text: $lastName)
                        .font(.system(size: 32.0, weight: .bold))
                        .lineLimit(1)
                        .minimumScaleFactor(0.75)
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
                Text("Create Profile")
                    .bold()
                    .frame(width: 280.0, height: 44.0)
                    .background(Color.brandPrimary)
                    .foregroundStyle(.white)
                    .cornerRadius(8.0)
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
