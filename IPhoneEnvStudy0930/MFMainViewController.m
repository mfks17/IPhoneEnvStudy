//
//  MFMainViewController.m
//  IPhoneEnvStudy0930
//
//  Created by mfks17 on 9/30/12.
//  Copyright (c) 2012 mfks17. All rights reserved.
//

#import "MFMainViewController.h"

@interface MFMainViewController ()
@end

@implementation MFMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _currentColorLabel.text = @"しろ";
    NSLog(@"test");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)swipeRight:(id)sender {
    self.view.backgroundColor = [UIColor greenColor];
    _currentColorLabel.text = @"みどり";
    NSLog(@"Right");
}

- (IBAction)swipeLeft:(id)sender {
    self.view.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:0.0f alpha:1.0f];
    _currentColorLabel.text = @"きいろ";
    NSLog(@"Left");
}

- (IBAction)resetViewColor:(id)sender {
    self.view.backgroundColor = [UIColor whiteColor];
    _currentColorLabel.text = @"しろ";
    NSLog(@"reset");
}
- (void)viewDidUnload {
    _currentColorLabel = nil;
    [super viewDidUnload];
}
@end
