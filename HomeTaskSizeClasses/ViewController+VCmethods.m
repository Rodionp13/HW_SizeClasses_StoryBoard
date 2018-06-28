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
    if([self shouldResizeWidthOfHeightConstraint]) {
        if(self.equalHeightConstr.constant >= 0) {
            self.equalHeightConstr.constant = -self.constant;
        } else {
            self.equalHeightConstr.constant = self.constant;
        }
    } else {
        if(self.equalWidthConstr.constant >= 0) {
            self.equalWidthConstr.constant = -self.constant;
        } else {
            self.equalWidthConstr.constant = self.constant;
        }
    }
}

//YES - change height, NO - width;
- (BOOL)shouldResizeWidthOfHeightConstraint {
    UIInterfaceOrientation deviceOrientation = [UIApplication sharedApplication].statusBarOrientation;
    for(NSInteger orientation = 0; orientation < self.orientations.count; orientation++) {
        for(NSInteger sizeClass = 0; sizeClass < self.sizeClasses.count; sizeClass++) {
            if(self.horizontalSizeClass == UIUserInterfaceSizeClassCompact && UIInterfaceOrientationIsPortrait(deviceOrientation)) {
                //                NSLog(@"YES");
                return YES;
            }
        }
    }
    //    NSLog(@"NO");
    return NO;
}

@end
