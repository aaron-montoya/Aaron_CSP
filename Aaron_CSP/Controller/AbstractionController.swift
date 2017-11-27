//
//  AbstractionController.swift
//  Aaron_CSP
//
//  Created by Montoya, Aaron on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AbstractionController: UIPageViewController, UIPageViewControllerDataSource {
    
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
        dataSource = self
        
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewControllers([firstViewController],
                                direction: .forward,
                                animated: true,
                                completion: nil)
        }
    }

    //MARK:- Required Protocol methods for UIPageViewControllerDatacource
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
        else
        {
            return orderedAbstractionViews.last
        }
        
        guard orderedAbstractionViews.count > previousIndex
        else
        {
            return nil
        }
        
        return orderedAbstractionViews[previousIndex]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
