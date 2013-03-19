//
//  WBRedGradientView.m
//  GradientView
//
//  Created by Tito Ciuro on 6/3/12.
//  Copyright (c) 2012 Webbo, LLC. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "WBRedGradientView.h"

@implementation WBRedGradientView

- (void)drawRect:(CGRect)rect
{
    // 167/26/20
    UIColor *redTop = [UIColor colorWithRed:252/255.0f green:28/255.0f blue:65/255.0f alpha:1.0];
    UIColor *redBot = [UIColor colorWithRed:225/255.0f green:3/255.0f blue:41/255.0f alpha:1.0];
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = [NSArray arrayWithObjects:
                       (id)redTop.CGColor,
                       (id)redBot.CGColor,
                       nil];
    gradient.locations = [NSArray arrayWithObjects:
                          [NSNumber numberWithFloat:0.0f],
                          [NSNumber numberWithFloat:0.7],
                          nil];
    
    [self.layer insertSublayer:gradient atIndex:0];
    self.layer.needsDisplayOnBoundsChange = YES;
    
    UIView *firstTopPinkLine = [[UIView alloc]initWithFrame:CGRectMake(0.0, 0.0, self.bounds.size.width, 1.0)];
    firstTopPinkLine.backgroundColor = [UIColor colorWithRed:211/255.0f green:82/255.0f blue:80/255.0f alpha:1.0];
    [self addSubview:firstTopPinkLine];
    
    UIView *secondTopRedLine = [[UIView alloc]initWithFrame:CGRectMake(0.0, 1.0, self.bounds.size.width, 1.0)];
    secondTopRedLine.backgroundColor = [UIColor colorWithRed:193/255.0f green:30/255.0f blue:23/255.0f alpha:1.0];
    [self addSubview:secondTopRedLine];
    
    UIView *firstBotRedLine = [[UIView alloc]initWithFrame:CGRectMake(0.0, self.bounds.size.height - 1, self.frame.size.width, 1.0)];
    firstBotRedLine.backgroundColor = [UIColor colorWithRed:99/255.0f green:2/255.0f blue:18/255.0f alpha:1.0];
    [self addSubview:firstBotRedLine];
    
    UIView *secondBotDarkLine = [[UIView alloc]initWithFrame:CGRectMake(0.0, self.bounds.size.height, self.frame.size.width, 1.0)];
    secondBotDarkLine.backgroundColor = [UIColor colorWithRed:153/255.0f green:14/255.0f blue:0/255.0f alpha:1.0];
    [self addSubview:secondBotDarkLine];
}

@end
