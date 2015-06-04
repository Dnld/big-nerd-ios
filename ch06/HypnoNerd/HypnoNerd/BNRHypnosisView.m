//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Donald Steinert on 6/2/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView()

@property (nonatomic, strong) UIColor *circleColor;

@end

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    // if instantiation successful
    // sets background color of all BNRHypnosisViews to clear
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    
    return self;
}

- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    // figure out the center of the rect
    CGPoint center;
    center.x = bounds.origin.x  + bounds.size.width / 2.0;
    center.y = bounds.origin.y  + bounds.size.height / 2.0;
    
//    // circle will be as lare as can fit in the window
//    float radius = MIN(bounds.size.width, bounds.size.height) / 2.0;

    float maxRadius = MAX(bounds.size.width, bounds.size.height) + 50 / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
//    // defines the path of the line
//    [path addArcWithCenter:center
//                    radius:radius
//                startAngle:0
//                  endAngle:M_PI *2.0
//                 clockwise:YES];

    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0
                      endAngle:M_PI *2.0
                     clockwise:YES];
    }
    
    path.lineWidth = 10.0;
    [self.circleColor setStroke];
    
    // draws the line
    [path stroke];
    
//    // add image to view    
//    UIImage *logo = [UIImage imageNamed:@"logo.png"];
//    CGRect imageFrame = CGRectMake(bounds.size.width * 0.20, bounds.size.height * 0.20, bounds.size.width * 0.60, bounds.size.height * 0.60);
//    
//    [logo drawInRect:imageFrame];
}

// when a finger touches the screen
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
//    NSLog(@"%@ was touched", self);
    
    // generate three random numbers betwee 0 and 1
    float red = (arc4random() % 100) / 100.00;
    float green = (arc4random() % 100) / 100.00;
    float blue = (arc4random() % 100) / 100.00;;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    
    self.circleColor = randomColor;
}

@end













