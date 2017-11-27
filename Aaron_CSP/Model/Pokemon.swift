//
//  Pokemon.swift
//  Aaron_CSP
//
//  Created by Montoya, Aaron on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class Pokemon : Collectable
{
    private var PokemonColour:UIColor
    //MARK: Collectable data member
    public var collected : Bool
    
    public init()
    {
        self.PokemonColour = UIColor()
        self.collected = false
    }
    
    //MARK: Collectable methods
    public func colect() -> Void
    {
        print("I am collect")
        collected = true
    }
    
    public func isCollected() -> Bool
    {
        if(collected)
        {
            print("Enslaved")
        }
        else
        {
            print("Free")
        }
        return collected
    }
}
