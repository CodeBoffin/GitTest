//
//  Contacts.h
//  Class0611DataPersistenceCoreData
//
//  Created by genius port on 11/6/15.
//  Copyright (c) 2015 vys. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Contacts : NSManagedObject

@property (nonatomic, retain) NSString * contactName;
@property (nonatomic, retain) NSString * contactEmail;
@property (nonatomic, retain) NSString * contactPhoneNo;
@property (nonatomic, retain) NSString * contactLocation;

@end
