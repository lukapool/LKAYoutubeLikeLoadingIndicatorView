//
//  ViewController.m
//  youtube-like-spinner
//
//  Created by Luka on 2017/8/11.
//  Copyright © 2017年 Luka. All rights reserved.
//

#import "ViewController.h"
#import "LKAYoutubeLikeLoadingIndicatorView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet LKAYoutubeLikeLoadingIndicatorView *spinnerViewOne;
@property (weak, nonatomic) IBOutlet LKAYoutubeLikeLoadingIndicatorView *spinnerViewTwo;
@property (weak, nonatomic) IBOutlet LKAYoutubeLikeLoadingIndicatorView *spinnerViewThree;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupSpinnerViewOne];
    [self setupSpinnerViewTwo];
    [self setupSpinnerViewThree];
    
}

- (void)setupSpinnerViewOne {
    self.spinnerViewOne.lineWidth = 7;
    self.spinnerViewOne.spinnerColors = @[
                                              [UIColor blackColor]
                                          ];
    self.spinnerViewOne.hidesWhenStopped = NO;
}

- (void)setupSpinnerViewTwo {
    self.spinnerViewTwo.lineWidth = 12;
}

- (void)setupSpinnerViewThree {
    self.spinnerViewThree.lineWidth = 3;
    self.spinnerViewThree.hidesWhenStopped = YES;
}

- (IBAction)startAnimation:(id)sender {
    [self.spinnerViewOne startAnimating];
    [self.spinnerViewTwo startAnimating];
    [self.spinnerViewThree startAnimating];
}

- (IBAction)stopAnimation:(id)sender {
    [self.spinnerViewOne stopAnimating];
    [self.spinnerViewTwo stopAnimating];
    [self.spinnerViewThree stopAnimating];
}

@end
