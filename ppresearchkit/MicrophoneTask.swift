//
//  MicrophoneTask.swift
//  ppresearchkit
//
//  Created by mac mini pprod 3 on 29/03/2016.
//  Copyright © 2016 mac mini pprod 3. All rights reserved.
//

import Foundation
import ResearchKit

public var MicrophoneTask: ORKOrderedTask {
    return ORKOrderedTask.audioTaskWithIdentifier("AudioTask", intendedUseDescription: "Une phrase à prononcer va apparaître", speechInstruction: "Voici une phrase compliquée", shortSpeechInstruction: "Je suis passé chez Sosh", duration: 10, recordingSettings: nil, options: [])
}
