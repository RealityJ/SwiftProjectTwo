//
//  MapsViewController.swift
//  Homework2
//
//  Created by Joaquin Castro-Calvo on 2/6/16.
//  Copyright © 2016 Joaquin Castro-Calvo. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapsViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    var receivedBuilding : NSString!
    //initlize to a place on campus
    var place: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 43.0380, longitude: -87.9280)
    //how big we want the view of the user to be
    let span: MKCoordinateSpan = MKCoordinateSpanMake(0.01,0.01)
    var myPosition = CLLocationCoordinate2D()
    var destination:MKMapItem = MKMapItem()

    var locationManager: CLLocationManager!
    
    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        let theRegion:MKCoordinateRegion = MKCoordinateRegionMake(place, span)
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        mapView.mapType = MKMapType.Standard
        
        let status = CLLocationManager.authorizationStatus()
        if status == .NotDetermined || status == .Denied || status == .AuthorizedWhenInUse {
            locationManager.requestAlwaysAuthorization()
            locationManager.requestWhenInUseAuthorization()
        }
        locationManager.startUpdatingLocation()
        mapView.setRegion(theRegion, animated: true)
        
        //sets depending on where the user wants to go
        if(receivedBuilding == "Library"){
            place = CLLocationCoordinate2D(latitude: 43.038315, longitude: -87.929886)
        }else if(receivedBuilding == "Engineering Hall"){
            place = CLLocationCoordinate2D(latitude: 43.038291, longitude: -87.933217)
        }else if(receivedBuilding == "Olin Engineering"){
            place = CLLocationCoordinate2D(latitude: 43.038346, longitude:  -87.932016)
        }else if(receivedBuilding == "Cudahy"){
            place = CLLocationCoordinate2D(latitude: 43.038213, longitude:  -87.928712)
        }
        
       
        //adds the annotation
        let annotation = MKPointAnnotation()
        annotation.coordinate = place
        annotation.title = receivedBuilding as String
        mapView.addAnnotation(annotation)

        let locCoord = place
        let placeMark = MKPlacemark(coordinate: locCoord, addressDictionary: nil)
        
        destination = MKMapItem(placemark: placeMark)
  

        
        //mapview setup to show user location
        mapView.delegate = self
        mapView.showsUserLocation = true
        mapView.mapType = MKMapType(rawValue: 0)!
        mapView.userTrackingMode = MKUserTrackingMode(rawValue: 2)!

        showDirections()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation) {
        
        myPosition = newLocation.coordinate
        
        locationManager.stopUpdatingLocation()
        
        
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: newLocation.coordinate, span: span)
        mapView.setRegion(region, animated: true)
    }
    
    func showDirections(){
        let directionsRequest = MKDirectionsRequest()
        directionsRequest.source = MKMapItem.mapItemForCurrentLocation()
        directionsRequest.destination = destination
        directionsRequest.transportType = MKDirectionsTransportType.Walking
        directionsRequest.requestsAlternateRoutes = false
        
        let directions = MKDirections(request: directionsRequest)
        directions.calculateDirectionsWithCompletionHandler({
            (response: MKDirectionsResponse?, error: NSError?) in
            if error != nil {
                print("Error \(error)")
            } else {
                let overlays = self.mapView.overlays
                self.mapView.removeOverlays(overlays)
                
                for route in response!.routes {
                    
                    self.mapView.addOverlay(route.polyline,
                        level: MKOverlayLevel.AboveRoads)
                }
                
                
            }
        })
    }
    
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer
    {
        let draw = MKPolylineRenderer(overlay: overlay)
        draw.strokeColor = UIColor(red: 1/255, green: 18/255, blue: 107/255, alpha: 1)
        draw.lineWidth = 3.0
        return draw
    }
}
