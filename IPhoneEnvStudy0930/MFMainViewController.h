//
//  MFMainViewController.h
//  IPhoneEnvStudy0930
//
//  Created by mfks17 on 9/30/12.
//  Copyright (c) 2012 mfks17. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MFMainViewController : UIViewController{
    
    __weak IBOutlet UILabel *_currentColorLabel;
}

- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)resetViewColor:(id)sender;

@end
