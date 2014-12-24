//
//  ViewController.m
//  AutoLayout
//
//  Created by Ramaraj Thanga Pandi on 22/12/14.
//  Copyright (c) 2014 Ramaraj. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    BOOL addControlProgrammatically = YES;
    
    if (addControlProgrammatically) {
        [self.view.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
        
        UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        [headerView setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5]];
        [self.view addSubview:headerView];
        
        UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [cancelBtn setTitle:@"Cancel" forState:UIControlStateNormal];
        [headerView addSubview:cancelBtn];
        
        UIButton *saveBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [saveBtn setTitle:@"Save" forState:UIControlStateNormal];
        [headerView addSubview:saveBtn];
        
        UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 100, 31)];
        [textField setBorderStyle:UITextBorderStyleRoundedRect];
        
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
        [button1 setTitle:@"Button1" forState:UIControlStateNormal];

        UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
        [button2 setTitle:@"Button2" forState:UIControlStateNormal];
        
        cancelBtn.translatesAutoresizingMaskIntoConstraints = NO;
        saveBtn.translatesAutoresizingMaskIntoConstraints = NO;
        
        [headerView addConstraints:@[[NSLayoutConstraint constraintWithItem:cancelBtn
                                                                  attribute:NSLayoutAttributeLeading
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:headerView
                                                                  attribute:NSLayoutAttributeLeading
                                                                 multiplier:1.0 constant:10],
                                     [NSLayoutConstraint constraintWithItem:cancelBtn
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:headerView
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:1.0 constant:0]
                                     ]];
        [headerView addConstraints:@[[NSLayoutConstraint constraintWithItem:saveBtn
                                                                  attribute:NSLayoutAttributeTrailing
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:headerView
                                                                  attribute:NSLayoutAttributeTrailing
                                                                 multiplier:1.0 constant:-10],
                                     [NSLayoutConstraint constraintWithItem:saveBtn
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:headerView
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:1.0 constant:0]
                                     ]];

        
        headerView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addConstraints:@[[NSLayoutConstraint constraintWithItem:headerView
                                                               attribute:NSLayoutAttributeHeight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:nil
                                                               attribute:NSLayoutAttributeNotAnAttribute
                                                              multiplier:1.0 constant:60],
                                    [NSLayoutConstraint constraintWithItem:headerView
                                                                 attribute:NSLayoutAttributeLeading
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeLeading
                                                                multiplier:1.0 constant:0],
                                    [NSLayoutConstraint constraintWithItem:headerView
                                                                 attribute:NSLayoutAttributeTrailing
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeTrailing
                                                                multiplier:1.0 constant:0],
                                    [NSLayoutConstraint constraintWithItem:headerView
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1.0 constant:0]
                                    ]];
        
        [self.view updateConstraintsIfNeeded];
        textField.translatesAutoresizingMaskIntoConstraints = NO;
        button1.translatesAutoresizingMaskIntoConstraints = NO;
        button2.translatesAutoresizingMaskIntoConstraints = NO;
        
//        [textField setText:@"Hello World"];
        [textField setBackgroundColor:[UIColor redColor]];
        [self.view addSubview:textField];
        [self.view addSubview:button1];
        [self.view addSubview:button2];
        
        [self.view addConstraints:@[[NSLayoutConstraint constraintWithItem:textField
                                                              attribute:NSLayoutAttributeCenterX
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeCenterX
                                                               multiplier:1.0 constant:0],
                                   [NSLayoutConstraint constraintWithItem:textField
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:headerView
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1.0 constant:75],
                                    [NSLayoutConstraint constraintWithItem:textField
                                                                 attribute:NSLayoutAttributeWidth
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeWidth
                                                                multiplier:0.5 constant:0]]];
        [self.view addConstraints:@[[NSLayoutConstraint constraintWithItem:button1
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:textField
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1.0 constant:0],
                                    [NSLayoutConstraint constraintWithItem:button1
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:textField
                                                                 attribute:NSLayoutAttributeBottom
                                                                multiplier:1.0 constant:25]]];
        [self.view addConstraints:@[[NSLayoutConstraint constraintWithItem:button2
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:textField
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1.0 constant:0],
                                    [NSLayoutConstraint constraintWithItem:button2
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:textField
                                                                 attribute:NSLayoutAttributeBottom
                                                                multiplier:1.0 constant:25]]];

        /*
        [self.view addConstraints:@[[NSLayoutConstraint constraintWithItem:textField
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:headerView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1.0 constant:0],
                                   [NSLayoutConstraint constraintWithItem:textField
                                                                attribute:NSLayoutAttributeCenterX
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeCenterX
                                                               multiplier:1.0 constant:0]
                                   ]];
        */
        /*
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:textField
                                                              attribute:NSLayoutAttributeCenterX
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:1.0 constant:0]];
        [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[headerView]-100-[textField]"
                                                                          options:0
                                                                          metrics:NSDictionaryOfVariableBindings(@10)
                                                                            views:NSDictionaryOfVariableBindings(headerView, textField)]];
*/
//        [self.view updateConstraints];
    }
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
