//
//  ContactViewController.m
//  Class0611DataPersistenceCoreData
//
//  Created by genius port on 11/6/15.
//  Copyright (c) 2015 vys. All rights reserved.
//

#import "ContactViewController.h"
#import "AppDelegate.h"
#import "Contacts.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

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

- (IBAction)createBtn:(id)sender {
    
    AppDelegate *obj=[[UIApplication sharedApplication]delegate];
    
    NSManagedObjectContext *context=[obj managedObjectContext];
    
    
    Contacts *entity=[NSEntityDescription insertNewObjectForEntityForName:@"Contacts" inManagedObjectContext:context];
    
    [entity setContactName:self.empName.text];
    [entity setContactEmail:self.empEmail.text];
    [entity setContactPhoneNo:self.empPhone.text];
    [entity setContactLocation:self.empLocation.text];
    if ([context save:nil]) {
        NSLog(@"the contact saved");
        
    }else
    {
        NSLog(@"the contect failed to save");
        
    }
    
    
}
@end
