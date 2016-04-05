//
//  TapTask.swift
//  ppresearchkit
//
//  Created by mac mini pprod 3 on 05/04/2016.
//  Copyright © 2016 mac mini pprod 3. All rights reserved.
//

import Foundation
import ResearchKit

public var TapTask: ORKOrderedTask {
    return ORKOrderedTask.twoFingerTappingIntervalTaskWithIdentifier("TapTask", intendedUseDescription: "tap tap tap", duration: 8.0, options: [])
}