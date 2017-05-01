//
//  HomeViewController.swift
//  Land of Plenty
//
//  Created by Randall Lee on 4/30/17.
//  Copyright © 2017 Creaky-Door. All rights reserved.
//

import UIKit
import TangramMap
import CoreLocation
import Mapzen_ios_sdk
import SpriteKit
import GameplayKit


class HomeViewController: MZMapViewController {
    
//    @IBOutlet weak var gameView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.layer.zPosition = -1
        
//        if let view = self.gameView as! SKView? {
//            // Load the SKScene from 'GameScene.sks'
//            if let scene = SKScene(fileNamed: "GameScene") {
//                // Set the scale mode to scale to fit the window
//                scene.scaleMode = .aspectFill
//                
//                // Present the scene
//                view.presentScene(scene)
//            }
//            
//            view.ignoresSiblingOrder = true
//            
//            view.showsFPS = true
//            view.showsNodeCount = true
//        }
        
        //load map
        try? loadStyleAsync(.cinnabar) { [unowned self] (style) in
            
            
            //            self.sceneDidLoad = true
            let _ = self.showCurrentLocation(true)
            self.showFindMeButon(true)
            //            if self.firstTimeZoomToCurrentLocation { self.shouldZoomToCurrentLocation() }
        }
        
        
        //DC location
        let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude:38.902884, longitude:-77.043362), altitude: 24.4, horizontalAccuracy: 10.0, verticalAccuracy: 3.0, course: 180, speed: 2.0, timestamp: Date())

        //Example
        let point = TGGeoPointMake(location.coordinate.longitude, location.coordinate.latitude)

        //zoom to position
        self.position = point
        self.zoom = 17

        let systemMarker = SystemPointMarker.initWithMarkerType(.droppedPin)
        systemMarker.point = point
        self.addMarker(systemMarker);

        
    }
    
//    override var shouldAutorotate: Bool {
//        return true
//    }
//    
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        if UIDevice.current.userInterfaceIdiom == .phone {
//            return .allButUpsideDown
//        } else {
//            return .all
//        }
//    }
//    
//    override var prefersStatusBarHidden: Bool {
//        return true
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Location
    
    override func locationDidUpdate(_ location: CLLocation) {
        print(location)
        
    }
    
}
    

