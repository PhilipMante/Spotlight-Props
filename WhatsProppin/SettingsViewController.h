//
//  SettingsViewController.h
//  WhatsProppin
//
//  Created by Philip Mante on 12/14/17.
//  Copyright © 2017 Philip Mante. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *pckSortField;
@property (weak, nonatomic) IBOutlet UISwitch *swAscending;
-(IBAction)sortDirectionChanged:(id)sender;

@end
