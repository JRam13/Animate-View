//
//  ViewController.m
//  AnimateLabel
//
//  Created by JRamos on 5/29/13.
//  Copyright (c) 2013 JRamos. All rights reserved.
//

#import "AnimateLabel.h"

@implementation UILabel (AnimateLabel)

- (void)animateLabel:(int)moveToXPosition :(int)moveToYPosition :(int)animationDuration :(int)startDelay
{
    CGPoint move;
    move.x = moveToXPosition;
    move.y = moveToYPosition;
    
    [UIView animateWithDuration:animationDuration delay:startDelay options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.center = move;
    }
                     completion:^(BOOL completed){
                         NSLog(@"Label animation Complete");
                     }
     ];
}

@end