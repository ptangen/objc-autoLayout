//
//  ViewController.m
//  autoLayout
//
//  Created by Paul Tangen on 4/30/17.
//  Copyright © 2017 Paul Tangen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
// textArea
    self.textView.translatesAutoresizingMaskIntoConstraints = NO;
    
    //leading
    NSLayoutConstraint *leading = [NSLayoutConstraint
                                   constraintWithItem: self.textView
                                   attribute: NSLayoutAttributeLeading
                                   relatedBy: NSLayoutRelationEqual
                                   
                                   toItem: self.view
                                   attribute: NSLayoutAttributeLeading
                                   multiplier: 1.0f
                                   constant: 10.f];
    
    // trailing
    NSLayoutConstraint *trailing = [NSLayoutConstraint
                                   constraintWithItem: self.textView
                                   attribute: NSLayoutAttributeTrailing
                                   relatedBy: NSLayoutRelationEqual
                                    
                                   toItem: self.view
                                   attribute: NSLayoutAttributeTrailing
                                   multiplier: 1.0f
                                   constant: -10.f];
    
    //top
    NSLayoutConstraint *top =[NSLayoutConstraint
                                 constraintWithItem: self.textView
                                 attribute: NSLayoutAttributeTop
                                 relatedBy: NSLayoutRelationEqual
                              
                                 toItem: self.view
                                 attribute: NSLayoutAttributeTop
                                 multiplier: 1.0f
                                 constant: 20.f];
    
    //bottom
    NSLayoutConstraint *bottom =[NSLayoutConstraint
                                 constraintWithItem: self.textView
                                 attribute: NSLayoutAttributeBottom
                                 relatedBy: NSLayoutRelationEqual
                                 
                                 toItem: self.view
                                 attribute: NSLayoutAttributeBottom
                                 multiplier: 1.0f
                                 constant: 0.f];

    [self.view addConstraint:leading];
    [self.view addConstraint:trailing];
    [self.view addConstraint:top];
    [self.view addConstraint:bottom];
    
    
// start button
    self.startButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    //leading
    NSLayoutConstraint *leadingStartButton = [NSLayoutConstraint
                                   constraintWithItem: self.startButton
                                   attribute: NSLayoutAttributeLeading
                                   relatedBy: NSLayoutRelationEqual
                                   
                                   toItem: self.view
                                   attribute: NSLayoutAttributeLeading
                                   multiplier: 1.0f
                                   constant: 10.f];
    
    //bottom
    NSLayoutConstraint *bottomStartButton =[NSLayoutConstraint
                                 constraintWithItem: self.startButton
                                 attribute: NSLayoutAttributeBottom
                                 relatedBy: NSLayoutRelationEqual
                                 
                                 toItem: self.view
                                 attribute: NSLayoutAttributeBottom
                                 multiplier: 1.0f
                                 constant: -10.f];
    
    [self.view addConstraint:leadingStartButton];
    [self.view addConstraint:bottomStartButton];
    
// stop button
    self.stopButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    //trailing
    NSLayoutConstraint *trailingStopButton = [NSLayoutConstraint
                                              constraintWithItem: self.stopButton
                                              attribute: NSLayoutAttributeTrailing
                                              relatedBy: NSLayoutRelationEqual
                                              
                                              toItem: self.view
                                              attribute: NSLayoutAttributeTrailing
                                              multiplier: 1.0f
                                              constant: -10.f];
    
    //bottom
    NSLayoutConstraint *bottomStopButton =[NSLayoutConstraint
                                            constraintWithItem: self.stopButton
                                            attribute: NSLayoutAttributeBottom
                                            relatedBy: NSLayoutRelationEqual
                                            
                                            toItem: self.view
                                            attribute: NSLayoutAttributeBottom
                                            multiplier: 1.0f
                                            constant: -10.f];
    
    [self.view addConstraint:trailingStopButton];
    [self.view addConstraint:bottomStopButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
