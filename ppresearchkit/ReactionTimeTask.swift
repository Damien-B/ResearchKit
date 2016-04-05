//
//  ReactionTimeTask.swift
//  ppresearchkit
//
//  Created by mac mini pprod 3 on 29/03/2016.
//  Copyright © 2016 mac mini pprod 3. All rights reserved.
//

import Foundation
import ResearchKit

public var ReactionTimeTask: ORKOrderedTask {
    return ORKOrderedTask.reactionTimeTaskWithIdentifier("ReactionTask", intendedUseDescription: "Nous allons tester votre temps de réaction", maximumStimulusInterval: 5, minimumStimulusInterval: 0.8, thresholdAcceleration: 0.5, numberOfAttempts: 3, timeout: 3, successSound: UInt32(kSystemSoundID_Vibrate), timeoutSound: UInt32(kSystemSoundID_Vibrate), failureSound: UInt32(kSystemSoundID_Vibrate), options: [])
}