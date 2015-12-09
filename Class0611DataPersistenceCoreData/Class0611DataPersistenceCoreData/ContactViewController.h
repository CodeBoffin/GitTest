//
//  ContactViewController.h
//  Class0611DataPersistenceCoreData
//
//  Created by genius port on 11/6/15.
//  Copyright (c) 2015 vys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactViewController : UIViewController
- (IBAction)createBtn:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *empLocation;
@property (strong, nonatomic) IBOutlet UITextField *empPhone;
@property (strong, nonatomic) IBOutlet UITextField *empEmail;
@property (strong, nonatomic) IBOutlet UITextField *empName;

@end
