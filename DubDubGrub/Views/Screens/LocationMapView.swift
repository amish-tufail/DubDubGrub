//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Amish on 16/07/2024.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 37.331516,
            longitude: -121.891054
        ),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    var body: some View {
        ZStack(alignment: .top) {
            Map(coordinateRegion: $region).ignoresSafeArea()
            LogoView()
                .shadow(radius: 10.0)
        }
    }
}

#Preview {
    LocationMapView()
}

struct LogoView: View {
    var body: some View {
        Image(.ddgMapLogo)
            .resizable()
            .scaledToFit()
            .frame(height: 70.0)
    }
}
