//
//  ViewController+VCmethods.m
//  HomeTaskSizeClasses
//
//  Created by User on 6/28/18.
//  Copyright © 2018 BNR. All rights reserved.
//

#import "ViewController+VCmethods.h"

@implementation ViewController (VCmethods)

- (void)resizeConstraints {
    NSLayoutConstraint *height = self.equalHeightConstr;
    NSLayoutConstraint *width = self.equalWidthConstr;
    
    if(self.view.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClassCompact) {
        if(height.constant == 0) {
            NSLog(@"equal");
            [self check:-300 :300 :height];
        } else if(height.constant > 0) {
            NSLog(@"greater");
            [self check:-300 :0 :height];
        } else if(height.constant < 0) {
            NSLog(@"less");
            [self check:0 :300 :height];
        }
    } else {
        if(width.constant == 0) {
            [self check:-300 :300 :width];
        } else if(width.constant > 0) {
            [self check:-300 :0 :width];
        } else if(width.constant < 0) {
            [self check:0 :300 :width];
        }
    }
}

- (void)check:(CGFloat)firstConstant :(CGFloat)secondConstant :(NSLayoutConstraint*)constraint {
    if(self.counter == 0) {
        constraint.constant = firstConstant;
    } else {
        constraint.constant = secondConstant;
    }
}







//YES - change height, NO - width;
//- (BOOL)shouldResizeWidthOfHeightConstraint {
//    UIInterfaceOrientation deviceOrientation = [UIApplication sharedApplication].statusBarOrientation;
//    for(NSInteger orientation = 0; orientation < self.orientations.count; orientation++) {
//        for(NSInteger sizeClass = 0; sizeClass < self.sizeClasses.count; sizeClass++) {
//            if(self.horizontalSizeClass == UIUserInterfaceSizeClassCompact && UIInterfaceOrientationIsPortrait(deviceOrientation)) {
//                //                NSLog(@"YES");
//                return YES;
//            }
//        }
//    }
//    //    NSLog(@"NO");
//    return NO;
//}

@end
