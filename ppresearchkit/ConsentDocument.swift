//
//  ConsentDocument.swift
//  ppresearchkit
//
//  Created by mac mini pprod 3 on 25/03/2016.
//  Copyright © 2016 mac mini pprod 3. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentDocument: ORKConsentDocument {

    // init ConsentDocument
    let consentDocument = ORKConsentDocument()
    consentDocument.title = "first consent"
    
    // define consent flow
    // can also use .Custom (no default content) or .OnlyInDocument (not displayed, but content included int summary of document for user's approval)
    let consentSectionTypes: [ORKConsentSectionType] = [
        .Overview,
        .DataGathering,
        .Privacy,
        .DataUse,
        .TimeCommitment,
        .StudySurvey,
        .StudyTasks,
        .Withdrawing
    ]
    let consentSections: [ORKConsentSection] = consentSectionTypes.map { contentSectionType in
        let consentSection = ORKConsentSection(type: contentSectionType)
        // in normal case : change content for every section
        consentSection.summary = "This is the section summary (section type : \(contentSectionType.rawValue)."
        consentSection.content = "This is the section content. It's the same for every section in this test application."
//        consentSection.customImage = 
        return consentSection
    }
    consentDocument.sections = consentSections
    
    // signature
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "ConsentDocumentParticipantSignature"))
    
    
    return consentDocument
}
