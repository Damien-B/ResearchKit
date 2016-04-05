//
//  ORKCustomActiveStepViewController.m
//  ResearchKit
//
//  Created by mac mini pprod 3 on 05/04/2016.
//  Copyright © 2016 researchkit.org. All rights reserved.
//

#import "ORKCustomActiveStepViewController.h"
#import "ORKCustomActiveStepCustomView.h"

@interface ORKCustomActiveStepViewController ()

@end

@implementation ORKCustomActiveStepViewController {
    ORKCustomActiveStepCustomView *_customContentView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _customContentView = [[ORKCustomActiveStepCustomView alloc] init];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
