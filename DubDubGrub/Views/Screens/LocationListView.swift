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
                    NavigationLink {
                        LocationDetailView()
                    } label: {
                        LocationCell()
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




