//
//  ORKCustomActiveStep.m
//  ResearchKit
//
//  Created by mac mini pprod 3 on 05/04/2016.
//  Copyright © 2016 researchkit.org. All rights reserved.
//

#import "ORKCustomActiveStep.h"
#import "ORKCustomActiveStepViewController.h"


@implementation ORKCustomActiveStep

+ (Class)stepViewControllerClass {
    return [ORKCustomActiveStepViewController class];
}

- (instancetype)initWithIdentifier:(NSString *)identifier {
    self = [super initWithIdentifier:identifier];
    if (self) {
        self.shouldShowDefaultTimer = NO;
    }
    return self;
}

- (void)validateParameters {
    [super validateParameters];
    
}

- (instancetype)copyWithZone:(NSZone *)zone {
    ORKCustomActiveStep *step = [super copyWithZone:zone];
    return step;
}

- (BOOL)allowsBackNavigation {
    return NO;
}

- (BOOL)startsFinished {
    return NO;
}

@end
