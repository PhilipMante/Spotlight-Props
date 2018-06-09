//
//  SettingsViewController.m
//  WhatsProppin
//
//  Created by Philip Mante on 12/14/17.
//  Copyright © 2017 Philip Mante. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
NSArray *sortOrderItems;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    sortOrderItems = @[@"propName",@"propLocation"];
    _pckSortField.dataSource = self;
   
    _pckSortField.delegate = self;
    NSUserDefaults *settings = [NSUserDefaults standardUserDefaults];
    bool sortAscending = [settings boolForKey:@"sortDirectionAscending"];
    [_swAscending setOn:sortAscending];
    
    NSString *sortField = [settings objectForKey:@"sortField"];
    int i = 0;
    for(NSString *field in sortOrderItems)
    {
        if([field isEqualToString:sortField])
        {
            [_pckSortField selectRow:i inComponent:0 animated:NO];
        }
        i++;
    }
    [_pckSortField reloadComponent:0];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)viewWillAppear:(BOOL)animated{
    NSUserDefaults *settings = [NSUserDefaults standardUserDefaults];
    bool sortAscending = [settings boolForKey:@"sortDirectionAscending"];
    [_swAscending setOn:sortAscending];
    
    NSString *sortField = [settings objectForKey:@"sortField"];
    int i = 0;
    for(NSString *field in sortOrderItems)
    {
        if([field isEqualToString:sortField])
        {
            [_pckSortField selectRow:i inComponent:0 animated:NO];
        }
        i++;
    }
    [_pckSortField reloadComponent:0];
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return sortOrderItems.count;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *) pickerView{
    return 1;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return sortOrderItems[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString *sortField = [sortOrderItems objectAtIndex:row];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:sortField forKey:@"sortField"];
    [defaults synchronize];
}


@end
