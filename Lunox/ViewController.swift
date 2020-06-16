//
//  ViewController.swift
//  Lunox
//
//  Created by Setiawan Joddy on 11/06/20.
//  Copyright © 2020 Setiawan Joddy. All rights reserved.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    var solarSystemAnchor: Experience.SolarSystem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        solarSystemAnchor  = try! Experience.loadSolarSystem()
        
        arView.environment.background = .skybox(try! EnvironmentResource.load(named: "space"))
        
        arView.scene.anchors.append(solarSystemAnchor)
        
        solarSystemAnchor.notifications.startSpinning.post()
        
        solarSystemAnchor.actions.backToFirstPage.onAction = tapSun(_:)
        
    }
    
    func tapSun(_ entity: Entity?) {
        print("test")
        
        solarSystemAnchor.notifications.startSpinning.post()
        
    }
    
//    func backButtonTap(_ entity: Entity?) {
//        solarSystemAnchor.notifications.startSpinning.post()
//    }
//
}
