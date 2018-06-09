//
//  ViewController.h
//  WhatsProppin
//
//  Created by Philip Mante on 12/13/17.
//  Copyright © 2017 Philip Mante. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Props+CoreDataProperties.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segViewEdit;

@property (weak, nonatomic) IBOutlet UITextField *txtProp;
@property (weak, nonatomic) IBOutlet UITextField *txtLocation;

@property (weak, nonatomic) IBOutlet UITextField *txtPath;
@property (weak, nonatomic) IBOutlet UISwitch *swLoanIndicator;
@property (weak, nonatomic) IBOutlet UITextField *txtContact;
@property (weak, nonatomic) IBOutlet UITextField *txtPhone;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UIDatePicker *dateIssued;
@property (weak, nonatomic) IBOutlet UIDatePicker *dateDue;


@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;
@property (strong, nonatomic)Props *prop;

@end

