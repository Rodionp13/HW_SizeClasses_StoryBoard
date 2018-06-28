//
//  ViewController.m
//  HomeTaskSizeClasses
//
//  Created by User on 6/27/18.
//  Copyright © 2018 BNR. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setConstant:self.view.frame.size.height * 0.4];
    _horizontalSizeClass = [self traitCollection].horizontalSizeClass;
    
    //orientations && sizeClasses for checking
    NSArray *orientations = @[[NSNumber numberWithInteger:UIInterfaceOrientationPortrait], [NSNumber numberWithInteger:UIDeviceOrientationPortraitUpsideDown], [NSNumber numberWithInteger:UIDeviceOrientationLandscapeRight], [NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft], [NSNumber numberWithInteger:UIDeviceOrientationFaceUp], [NSNumber numberWithInteger:UIDeviceOrientationFaceDown]];
    [self setOrientations:orientations];
    
    NSArray *sizeClasses = @[[NSNumber numberWithInteger:UIUserInterfaceSizeClassRegular], [NSNumber numberWithInteger:UIUserInterfaceSizeClassCompact]];
    [self setSizeClasses:sizeClasses];
    
    //change orientaton observing
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationDidChange:) name:UIDeviceOrientationDidChangeNotification object:nil];
}

//every time orientation changed - set width && height to the initial equal state;
- (void)orientationDidChange:(NSNotification *)notification {
    UIDeviceOrientation orientation = [UIDevice currentDevice].orientation;//    NSLog(@"Orientation changed");
    for (NSInteger i = 0; i < self.orientations.count; i++) {
        if(orientation == i) {
            self.equalHeightConstr.constant = 0;
            self.equalWidthConstr.constant = 0;
        }
    }
}



- (IBAction)firstBttnTapped:(id)sender {
    [self resizeConstraints];
}

- (IBAction)secondBttnTapped:(id)sender {
    [self resizeConstraints];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
