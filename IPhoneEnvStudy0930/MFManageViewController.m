//
//  MFManageViewController.m
//  IPhoneEnvStudy0930
//
//  Created by mfks17 on 9/30/12.
//  Copyright (c) 2012 mfks17. All rights reserved.
//

#import "MFManageViewController.h"

@interface MFManageViewController ()

@end

@implementation MFManageViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goSecondarySB:(id)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Secondary" bundle:[NSBundle mainBundle]];
    UIViewController *controller = [storyBoard instantiateViewControllerWithIdentifier:@"notEntryPoint"];
    [self presentViewController:controller animated:YES completion:^{}];
}
@end
