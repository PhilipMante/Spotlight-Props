//
//  ViewController.m
//  WhatsProppin
//
//  Created by Philip Mante on 12/13/17.
//  Copyright © 2017 Philip Mante. All rights reserved.
//

#import "ViewController.h"
#import "Props+CoreDataClass.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  _scrollview.contentSize = CGSizeMake(340,1500);

    if (_prop)
    {
        _txtProp.text = _prop.propName;
        _txtLocation.text = _prop.propLocation;
        _txtPath.text = _prop.path;
        //BOOL on = _prop.indicator;
        [_swLoanIndicator setOn:_prop.indicator];
    
        _txtContact.text = _prop.contactName;
        _txtPhone.text = _prop.phoneNumber;
        _txtEmail.text = _prop.eMail;
         _dateDue.date = _prop.dateDue;
        _dateIssued.date = _prop.dateIssued;
        
        
    }



}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)editToggled:(id)sender { if (_segViewEdit.selectedSegmentIndex == 1)
{
    _txtProp.enabled =true;
    
    _txtPath.enabled = true;
    _swLoanIndicator.enabled = true;
    if(_swLoanIndicator.isOn == false)
    {
        _txtLocation.enabled = true;
    }
    else
    {
        _txtContact.enabled = true;
        _txtPhone.enabled = true;
        _txtEmail.enabled = true;
        _dateDue.enabled = true;
        _dateIssued.enabled = true;
        _dateDue.userInteractionEnabled = true;
        _dateIssued.userInteractionEnabled = true;
        
    }
}
else
{
    _txtProp.enabled = false;
    _txtLocation.enabled = false;
    _txtPath.enabled = false;
    _swLoanIndicator.enabled= false;
    _txtContact.enabled = false;
    _txtPhone.enabled = false;
    _txtEmail.enabled = false;
    _dateDue.enabled = false;
    _dateIssued.enabled = false;
}
}

- (IBAction)editLoan:(id)sender { if(_swLoanIndicator.isOn == true )
{
    _txtLocation.enabled = false;
    _txtLocation.text = @"Loaned Out";
    _txtContact.enabled = true;
    _txtPhone.enabled = true;
    _txtEmail.enabled = true;
    _dateDue.enabled = true;
    _dateIssued.enabled = true;
    _dateDue.userInteractionEnabled = true;
    _dateIssued.userInteractionEnabled = true;
}
else
{
    _txtLocation.enabled = true;
    _txtLocation.text = @"";
    _txtContact.text = @"";
    _txtPhone.text = @"";
    _txtEmail.text = @"";
    
    _txtContact.enabled = false;
    _txtPhone.enabled = false;
    _txtEmail.enabled = false;
    _dateDue.enabled = false;
    _dateIssued.enabled = false;
}
}
- (IBAction)saveProp:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.persistentContainer.viewContext;
    //  Props *prop = [NSEntityDescription insertNewObjectForEntityForName:@"Props" inManagedObjectContext:context];
    NSError *error;
    if (!_prop)
    {
        
        _prop = [NSEntityDescription insertNewObjectForEntityForName:@"Props" inManagedObjectContext:context];
        
        
    }
    [_prop setValue:_txtProp.text forKey:@"propName"];
    [_prop setValue:_txtLocation.text forKey:@"propLocation"];
    [_prop setValue:_txtPath.text forKey:@"path"];
    NSNumber *value = [NSNumber numberWithBool:_swLoanIndicator.on];
 NSLog(@"Error saving object: %@", value);
    [_prop setValue:value forKey:@"indicator"];
    [_prop setValue:_txtContact.text forKey:@"contactName"];
    [_prop setValue:_txtPhone.text forKey:@"phoneNumber"];
    [_prop setValue:_txtEmail.text forKey:@"eMail"];
    [_prop setValue:_dateIssued.date forKey:@"dateIssued"];
    [_prop setValue:_dateDue.date forKey:@"dateDue"];
    
    
    [context save:&error];
    
    if(error != nil) {
        NSLog(@"Error saving object: %@", error.description);
    }
    else {
        NSLog(@"%@ saved successfully", _txtProp.text);
    }
    
    [_segViewEdit setSelectedSegmentIndex:0];
    
    _txtProp.enabled = false;
    _txtLocation.enabled = false;
    _txtPath.enabled = false;
    _swLoanIndicator.enabled= false;
    _txtContact.enabled = false;
    
    _txtPhone.enabled = false;
    _txtEmail.enabled = false;
    _dateDue.enabled = false;
    _dateIssued.enabled = false;
    
}


@end
