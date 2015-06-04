//
//  ViewController.m
//  HypnoNerd
//
//  Created by Donald Steinert on 6/4/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "ViewController.h"
#import "BNRHypnosisView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView
{
    // create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    
    // set it as the view
    self.view = backgroundView;
}

@end
