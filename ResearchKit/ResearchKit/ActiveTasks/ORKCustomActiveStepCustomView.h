//
//  ORKCustomActiveStepCustomView.h
//  ResearchKit
//
//  Created by mac mini pprod 3 on 05/04/2016.
//  Copyright © 2016 researchkit.org. All rights reserved.
//

#import "ORKCustomStepView_Internal.h"
#import "ORKSubheadlineLabel.h"
#import "ORKRoundTappingButton.h"

@interface ORKCustomActiveStepCustomView : ORKActiveStepCustomView

@property ORKSubheadlineLabel *instructionLabel;
@property ORKRoundTappingButton *tapButton;
@property UIProgressView *progressView;

@end
