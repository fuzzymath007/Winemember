//
//  NewEntryViewController.m
//  Winemember
//
//  Created by Matthew Chess on 8/7/14.
//  Copyright (c) 2014 matthewchess. All rights reserved.
//

#import "NewEntryViewController.h"
#import "CoreDataStack.h"
#import "WineEntry.h"

@interface NewEntryViewController ()

@end

@implementation NewEntryViewController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)insertWineEntry{
    CoreDataStack *coreDataStack = [CoreDataStack defaultStack];
    
    WineEntry *entry = [NSEntityDescription insertNewObjectForEntityForName:@"WineEntry" inManagedObjectContext:coreDataStack.managedObjectContext];
    entry.body= self.testField.text;
    entry.date= [[NSDate date] timeIntervalSince1970];
    [coreDataStack saveContext];
    
}

- (IBAction)doneWasPressed:(id)sender {
    [self insertWineEntry];
    [self dismissSelf];
}

- (IBAction)cancelWasPressed:(id)sender {
    [self dismissSelf];
    
}

-(void) dismissSelf{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


@end
