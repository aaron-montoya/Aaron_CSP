//
//  AlgorithmsController.swift
//  Aaron_CSP
//
//  Created by Montoya, Aaron on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmsController: UIViewController {

    // MARK: Data members
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        let algorithm :String = "These are the instructions to create a project in Swift using Xcode and Github"
        let stepOne :String = "Open Xcode and click “Create a new Xcode project”."
        let stepTwo :String = "Make sure iOS is selected at the top and then click “Single View App” then the Next button."
        let stepThree :String = "Give your project a name and make sure it has an organization, CTEC for us, and that the Language is set to Swift. Click the Next button."
        let stepFour :String = "Browse to the location that you want to save the project and click the Create button."
        let stepFive :String = "Open GitHub and go to File → New Repository… and name your repository the exact same name as your project."
        let stepSix :String = "Make sure that the Local Path is where your project is saved and that the Git Ignore is set to Swift."
        let stepSeven :String = "Undo the default commit and then go to Repository → Repository Settings… then click on Ignored Files and add, “.DS_Store” to the top of it. Click save."
        let stepEight :String = "Write a good commit message and click Commit to master"
        
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight]
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "🦊"
            let formattedStep :String = "\n\(bullet)\(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupAlgorithm()
        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
