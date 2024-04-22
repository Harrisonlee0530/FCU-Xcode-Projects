//
//  Landmark.swift
//  Landmarks
//
//  Created by Harrison Lee on 2021/4/11.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    // properties matching names with keys in the json file
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    // load image from assets
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    // coordinates of landmark
    private var coordinates: Coordinates
    
    // create locationCoordinate property to interact with the MapKit framework
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
