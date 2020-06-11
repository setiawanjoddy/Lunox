//
//  ViewController.swift
//  Lunox
//
//  Created by Setiawan Joddy on 11/06/20.
//  Copyright © 2020 Setiawan Joddy. All rights reserved.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let solarSystemAnchor  = try! Experience.loadSolarSystem()
        
        arView.scene.anchors.append(solarSystemAnchor)
        
    }
}
