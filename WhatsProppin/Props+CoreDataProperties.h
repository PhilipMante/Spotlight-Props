//
//  Props+CoreDataProperties.h
//  WhatsProppin
//
//  Created by Philip Mante on 12/13/17.
//  Copyright © 2017 Philip Mante. All rights reserved.
//
//

#import "Props+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Props (CoreDataProperties)

+ (NSFetchRequest<Props *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *propName;
@property (nullable, nonatomic, copy) NSString *propLocation;
@property (nullable, nonatomic, copy) NSString *path;
@property (nonatomic) BOOL indicator;
@property (nullable, nonatomic, copy) NSString *contactName;
@property (nullable, nonatomic, copy) NSString *phoneNumber;
@property (nullable, nonatomic, copy) NSString *eMail;
@property (nullable, nonatomic, copy) NSDate *dateIssued;
@property (nullable, nonatomic, copy) NSDate *dateDue;

@end

NS_ASSUME_NONNULL_END
