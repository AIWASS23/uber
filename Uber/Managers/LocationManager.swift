//
//  LocationManager.swift
//  Uber
//
//  Created by Marcelo de Araújo on 31/10/2023.
//

import CoreLocation

final class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    var isFirstLocationSet = false
    
    override init() {
        super.init() 
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else { return }
        locationManager.stopUpdatingLocation()
    }
}
