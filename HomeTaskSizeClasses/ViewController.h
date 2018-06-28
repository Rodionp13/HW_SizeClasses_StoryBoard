//
//  ViewController.h
//  HomeTaskSizeClasses
//
//  Created by User on 6/27/18.
//  Copyright © 2018 BNR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController+VCmethods.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *equalHeightConstr;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *equalWidthConstr;

@property (assign, nonatomic) CGFloat constant;
@property (assign, nonatomic) NSInteger horizontalSizeClass;
@property (nonatomic) NSArray *orientations;
@property (nonatomic) NSArray *sizeClasses;

@end

