//
//  GlobalImpactController.swift
//  Aaron_CSP
//
//  Created by Montoya, Aaron on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class GlobalImpactController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadLabels()
        loadImage()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Outlets
    @IBOutlet weak var nuclearImage: UIImageView!
    @IBOutlet weak var planLabel: UILabel!
    @IBOutlet weak var personalLabel: UILabel!
    
    //Load the image and text programmatically
    public func loadImage() -> Void
    {
        nuclearImage.image = #imageLiteral(resourceName: "GlobalImpactImage2")
    }
    
    public func loadLabels()
    {
        planLabel.text = "The Plan for the app"
        personalLabel.text = "Personal connection to the global problem"
    }
    
}
