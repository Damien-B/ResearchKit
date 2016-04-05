//
//  SurveyTask.swift
//  ppresearchkit
//
//  Created by mac mini pprod 3 on 29/03/2016.
//  Copyright © 2016 mac mini pprod 3. All rights reserved.
//

import Foundation
import ResearchKit

public var SurveyTask: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    // instructions
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = "3 questions survey"
    instructionStep.text = "This is a survey based on three questions."
    steps += [instructionStep]
    
    // simple question
    let nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 30)
    nameAnswerFormat.multipleLines = false
    let nameQuestionStepTitle = "What is your name ? (simple question)"
    let nameQuestionStep = ORKQuestionStep(identifier: "QuestionStep", title: nameQuestionStepTitle, answer: nameAnswerFormat)
    // not optional
    nameQuestionStep.optional = false
    steps += [nameQuestionStep]

    // multiple choices question
    let multipleQuestionsStepTitle = "what is your gender ?"
    let textChoices = [
        ORKTextChoice(text: "Female", value: 0),
        ORKTextChoice(text: "Male", value: 1),
        ORKTextChoice(text: "idklol", value: 2)
    ]
    let multipleQuestionsAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)
    let multipleQuestionsStep = ORKQuestionStep(identifier: "TextChoiceQuestionStep", title: multipleQuestionsStepTitle, answer: multipleQuestionsAnswerFormat)
    multipleQuestionsStep.optional = false
    steps += [multipleQuestionsStep]
    
    // images question
    let colorQuestionStepTitle = "What is your favorite color ?"
    let colorTuples = [
        (UIImage(named: "red")!, "Red"),
        (UIImage(named: "orange")!, "Orange"),
        (UIImage(named: "yellow")!, "Yellow"),
        (UIImage(named: "green")!, "Green"),
        (UIImage(named: "blue")!, "Blue"),
        (UIImage(named: "purple")!, "Purple")
    ]
    let imageChoices : [ORKImageChoice] = colorTuples.map {
        return ORKImageChoice(normalImage: $0.0, selectedImage: nil, text: $0.1, value: $0.1)
    }
    let colorAnswerFormat: ORKImageChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithImageChoices(imageChoices)
    let colorQuestionStep = ORKQuestionStep(identifier: "ImageChoiceQuestionStep", title: colorQuestionStepTitle, answer: colorAnswerFormat)
    // not optional
    colorQuestionStep.optional = true
    steps += [colorQuestionStep]
    
    // summary section
    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
    summaryStep.title = "the end."
    summaryStep.text = "This survey is finished"
    steps += [summaryStep]
    
    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
}