//
//  ORKCustomActiveStepCustomView.m
//  ResearchKit
//
//  Created by mac mini pprod 3 on 05/04/2016.
//  Copyright © 2016 researchkit.org. All rights reserved.
//

#import "ORKCustomActiveStepCustomView.h"
#import "ORKSkin.h"

@implementation ORKCustomActiveStepCustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
 */

- (instancetype)init {
    self = [super init];
    if (self) {
        _instructionLabel = [ORKSubheadlineLabel new];
        _instructionLabel.textAlignment = NSTextAlignmentCenter;
        _instructionLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _instructionLabel.text = @"Touchez une fois le bouton";
        
//        _progressView = [UIProgressView new];
//        _progressView.translatesAutoresizingMaskIntoConstraints = NO;
//        _progressView.progressTintColor = [self tintColor];
//        [_progressView setAlpha:0];
        
        _tapButton = [[ORKRoundTappingButton alloc] init];
        _tapButton.translatesAutoresizingMaskIntoConstraints = NO;
        [_tapButton setTitle:ORKLocalizedString(@"TAP_BUTTON_TITLE", nil) forState:UIControlStateNormal];
        
        [self addSubview:_instructionLabel];
//        [self addSubview:_progressView];
        [self addSubview:_tapButton];
        
        self.translatesAutoresizingMaskIntoConstraints = NO;
        
        [self setUpConstraints];
        
    }
    
    return self;
}

- (void)tintColorDidChange {
    [super tintColorDidChange];
    _progressView.progressTintColor = [self tintColor];
}

- (void)setUpConstraints {
    NSMutableArray *constraints = [NSMutableArray array];
    
    [constraints addObject:[NSLayoutConstraint constraintWithItem:_instructionLabel
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:self
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1.0
                                                         constant:10.0]];
    
    [constraints addObject:[NSLayoutConstraint constraintWithItem:self
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_tapButton
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1.0
                                                         constant:10.0]];
    
//    [constraints addObject:[NSLayoutConstraint constraintWithItem:_progressView
//                                                        attribute:NSLayoutAttributeTop
//                                                        relatedBy:NSLayoutRelationEqual
//                                                           toItem:self
//                                                        attribute:NSLayoutAttributeTop
//                                                       multiplier:1.0
//                                                         constant:10.0]];
//
//    [constraints addObject:[NSLayoutConstraint constraintWithItem:_progressView
//                                 attribute:NSLayoutAttributeWidth
//                                 relatedBy:NSLayoutRelationEqual
//                                    toItem:nil
//                                 attribute:NSLayoutAttributeNotAnAttribute
//                                multiplier:1.0
//                                  constant:ORKScreenMetricMaxDimension]];
    
//    [constraints addObject:[NSLayoutConstraint constraintWithItem:_progressView
//                                 attribute:NSLayoutAttributeFirstBaseline
//                                 relatedBy:NSLayoutRelationEqual
//                                    toItem:_instructionLabel
//                                 attribute:NSLayoutAttributeFirstBaseline
//                                multiplier:1.0
//                                  constant:10.0]];
    
    
}


@end
