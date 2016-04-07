//
//  ViewController.swift
//  day22
//
//  Created by Andy on 4/7/16.
//  Copyright © 2016 Andy Rice. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController, ESTBeaconManagerDelegate {

    @IBOutlet weak var distanceReading: UILabel!
    let beaconManager = ESTBeaconManager()

    let individualBeacons = [
        "12979:27035": [
            "Blueberry Pie": 10
        ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        locationManager = CLLocationManager()
//        locationManager.delegate = self
//        locationManager.requestAlwaysAuthorization()
        self.beaconManager.delegate = self
        self.beaconManager.requestAlwaysAuthorization()
        startScanning()
        
        view.backgroundColor = UIColor.grayColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
//        if status == .AuthorizedAlways {
//            if CLLocationManager.isMonitoringAvailableForClass(CLBeaconRegion.self) {
//                if CLLocationManager.isRangingAvailable() {
//                    print("We're authorized for location, start scanning...")
//                    startScanning()
//                }
//            }
//        }
//    }
    
    func startScanning() {
//        let uuid = NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!
//        let beaconRegion = CLBeaconRegion(proximityUUID: uuid, major: 12979, minor: 27035, identifier: "BlueberryPie")
//        
//        locationManager.startMonitoringForRegion(beaconRegion)
//        locationManager.startRangingBeaconsInRegion(beaconRegion)
        print("Scanning now...")
        let beaconRegion = CLBeaconRegion(
            proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!,
            identifier: "estimote beacons"
        )
        self.beaconManager.startRangingBeaconsInRegion(beaconRegion)
    }
    
    func updateDistance(distance: CLProximity) {
        UIView.animateWithDuration(0.8) { [unowned self] in
            switch distance {
            case .Unknown:
                self.view.backgroundColor = UIColor.grayColor()
                self.distanceReading.text = "UNKNOWN"
            case .Far:
                self.view.backgroundColor = UIColor.blueColor()
                self.distanceReading.text = "FAR"
            case .Near:
                self.view.backgroundColor = UIColor.orangeColor()
                self.distanceReading.text = "NEAR"
            case .Immediate:
                self.view.backgroundColor = UIColor.redColor()
                self.distanceReading.text = "RIGHT HERE"
            }
        }
    }
    
    func beaconManager(manager: AnyObject, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion) {
        if beacons.count > 0 {
            print("Found beacons, updating proximity...")
            let beacon = beacons.first
            updateDistance(beacon!.proximity)
        } else {
            print("No beacons found...")
            updateDistance(.Unknown)
        }
    }

}

