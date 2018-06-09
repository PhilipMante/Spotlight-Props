//
//  Props+CoreDataProperties.m
//  WhatsProppin
//
//  Created by Philip Mante on 12/13/17.
//  Copyright © 2017 Philip Mante. All rights reserved.
//
//

#import "Props+CoreDataProperties.h"

@implementation Props (CoreDataProperties)

+ (NSFetchRequest<Props *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Props"];
}

@dynamic propName;
@dynamic propLocation;
@dynamic path;
@dynamic indicator;
@dynamic contactName;
@dynamic phoneNumber;
@dynamic eMail;
@dynamic dateIssued;
@dynamic dateDue;

@end
