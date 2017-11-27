//
//  AbstractionController.swift
//  Aaron_CSP
//
//  Created by Montoya, Aaron on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AbstractionController: UIViewController, UIPageViewControllerDataSource {
    
    //MARK: Array of subviews
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel: "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(abstractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLevel: "AndGate")
        ]
    }()
    
    //Helper methods to retrieve the correct ViewController
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //MARK:- Required Protocol methods for UIPageViewControllerDatacource
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
