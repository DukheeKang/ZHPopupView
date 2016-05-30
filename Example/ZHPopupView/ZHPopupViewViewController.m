//
//  ZHPopupViewViewController.m
//  ZHPopupView
//
//  Created by zhhlmr on 05/19/2016.
//  Copyright (c) 2016 zhhlmr. All rights reserved.
//

#import "ZHPopupViewViewController.h"
#import "ZHPopupView.h"


#define kRandomText @"\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\""

@interface ZHPopupViewViewController ()

@end

@implementation ZHPopupViewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Pressed Events

- (IBAction)pressedOnAlertViewPopup:(id)sender {
    
    ZHPopupView *popupView = [ZHPopupView popupNomralAlertViewInView:nil
                                                     backgroundStyle:ZHPopupViewBackgroundType_SimpleOpacity
                                                               title:@"Tips"
                                                             content:@"Confirm to delete/remove?"
                                                        buttonTitles:@[@"Cancel", @"Confirm"]
                                                 confirmBtnTextColor:nil otherBtnTextColor:nil
                                                  buttonPressedBlock:^(NSInteger btnIdx) {
                                                      
                                                      
                                                  }];
    
    [popupView setContentTextAlignment:NSTextAlignmentCenter];
    [popupView present];
    
}

- (IBAction)pressedOnDialogViewPopup:(id)sender {
    
    
    ZHPopupView *popupView = [ZHPopupView popUpDialogViewInView:nil
                                                        iconImg:[UIImage imageNamed:@"correct_icon"]
                                                backgroundStyle:ZHPopupViewBackgroundType_SimpleOpacity
                                                          title:@"Lorem Ipsum"
                                                        content:kRandomText
                                                   buttonTitles:@[@"Cancel", @"Confirm"]
                                            confirmBtnTextColor:nil otherBtnTextColor:nil
                                             buttonPressedBlock:^(NSInteger btnIdx) {
                                                 
                                                 
                                             }];
    [popupView present];
    
    
}

- (IBAction)pressedOnBlurAlertViewPopup:(id)sender {
    
    ZHPopupView *popupView = [ZHPopupView popupNomralAlertViewInView:nil
                                                     backgroundStyle:ZHPopupViewBackgroundType_Blur
                                                               title:@"Tips"
                                                             content:@"Confirm to delete/remove?"
                                                        buttonTitles:@[@"Cancel", @"Confirm"]
                                                 confirmBtnTextColor:nil otherBtnTextColor:nil
                                                  buttonPressedBlock:^(NSInteger btnIdx) {
                                                      
                                                      
                                                  }];
    [popupView present];
    
    
}

- (IBAction)pressedOnBlurDialogViewPopup:(id)sender {
    ZHPopupView *popupView = [ZHPopupView popUpDialogViewInView:nil
                                                        iconImg:[UIImage imageNamed:@"correct_icon"]
                                                backgroundStyle:ZHPopupViewBackgroundType_Blur
                                                          title:@"Lorem Ipsum"
                                                        content:kRandomText
                                                   buttonTitles:@[@"Cancel", @"Confirm"]
                                            confirmBtnTextColor:nil otherBtnTextColor:nil
                                             buttonPressedBlock:^(NSInteger btnIdx) {
                                                 
                                                 
                                             }];
    [popupView present];
}



@end
