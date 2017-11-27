//
//  Collectable.swift
//  Aaron_CSP
//
//  Created by Montoya, Aaron on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation

public protocol Collectable
{
    var collected : Bool {get set}
    func collect() -> Void
    func isCollected() -> Bool
}
