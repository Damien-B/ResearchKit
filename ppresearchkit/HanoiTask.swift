//
//  HanoiTask.swift
//  ppresearchkit
//
//  Created by mac mini pprod 3 on 29/03/2016.
//  Copyright © 2016 mac mini pprod 3. All rights reserved.
//

import Foundation
import ResearchKit

public var HanoiTask: ORKOrderedTask {
    return ORKOrderedTask.towerOfHanoiTaskWithIdentifier("HanoiTask", intendedUseDescription: "blblblblblbl", numberOfDisks: 5, options: [])
}