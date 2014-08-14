//
//  NewEntryViewController.h
//  Winemember
//
//  Created by Matthew Chess on 8/7/14.
//  Copyright (c) 2014 matthewchess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewEntryViewController : UIViewController
- (IBAction)doneWasPressed:(id)sender;
- (IBAction)cancelWasPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *testField;

@end
