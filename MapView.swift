//
//  MapView.swift
//  SeaPlastic
//
//  Created by Khushi Sinha on 4/25/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State var coordinateRegion = MKCoordinateRegion(
      center: CLLocationCoordinate2D(latitude: 42.3601, longitude: 71.0589),
      span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
      Map(coordinateRegion: $coordinateRegion)
        .edgesIgnoringSafeArea(.all)
    }
  }

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
