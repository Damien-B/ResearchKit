//
//  ConsentTask.swift
//  ppresearchkit
//
//  Created by mac mini pprod 3 on 25/03/2016.
//  Copyright © 2016 mac mini pprod 3. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentTask: ORKOrderedTask {

    var steps = [ORKStep]()
    
    // visual consent step
    let consentDocument = ConsentDocument
    let visualConsentStep = ORKVisualConsentStep(identifier: "VisualConsentStep", document: consentDocument)
    steps += [visualConsentStep]
    
    // consent review step
    let signature = consentDocument.signatures!.first! as ORKConsentSignature
    let reviewConsentStep = ORKConsentReviewStep(identifier: "ConsentReviewStep", signature: signature, inDocument: consentDocument)
    reviewConsentStep.text = "Review consent!"
    reviewConsentStep.reasonForConsent = "Consent to join study"
    steps += [reviewConsentStep]
    
    return ORKOrderedTask(identifier: "ConsentTask", steps: steps)
}