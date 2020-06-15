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
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let arConfiguration = ARWorldTrackingConfiguration()
//        arConfiguration.planeDetection = .horizontal
//        arView.session.run(arConfiguration)
        
        let solarSystemAnchor  = try! Experience.loadSolarSystem()
        
        arView.scene.anchors.append(solarSystemAnchor)
        arView.environment.background = .color(.black)
        //.skybox(try! EnvironmentResource.load(named: ""))
        
    }
}
