//
//  ViewController.m
//  CalorieCounter
//
//  Created by Lea Marolt on 4/2/14.
//  Copyright (c) 2014 Lea Marolt Sonnenschein. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int calories;
    BOOL add;
}

@end

@implementation ViewController {
    UIView *circleBorder;
    UIView *circleBg;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIColor *mainColor = [UIColor colorWithRed:188/255.0 green:23/255.0 blue:65/255.0 alpha:1];
    
    self.view.backgroundColor = mainColor;
    
    self.calorieNumber.delegate = self;
    self.calorieField.delegate = self;
    self.calorieField.hidden = YES;
    
    calories = [self.calorieCount.text intValue];
    NSLog(@"Current calories: %d", calories);
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    NSLog(@"Height: %f, Width: %f", screenHeight, screenWidth);
    
    
    circleBorder = [[UIView alloc] initWithFrame:CGRectMake(screenWidth/2 - 140, screenHeight/2 - 140, 280,280)];
    circleBorder.layer.cornerRadius = 140;
    circleBorder.backgroundColor = [UIColor whiteColor];
    [self.view insertSubview:circleBorder atIndex:0];
    
    circleBg = [[UIView alloc] initWithFrame:CGRectMake(screenWidth/2 - 125, screenHeight/2 - 125, 250,250)];
    circleBg.layer.cornerRadius = 125;
    circleBg.backgroundColor = mainColor;
    [self.view insertSubview:circleBg aboveSubview:circleBorder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addCalories:(id)sender {
    self.calorieField.hidden = NO;
    [self.calorieNumber becomeFirstResponder];
    add = YES;
}

- (IBAction)subtractCalories:(id)sender {
    self.calorieField.hidden = NO;
    [self.calorieNumber becomeFirstResponder];
    add = NO;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    int addedCalories = [textField.text intValue];
    
    if (add) {
        calories = calories + addedCalories;
    }
    else {
        calories = calories - addedCalories;
    }
    self.calorieCount.text = [NSString stringWithFormat:@"%d", calories];
    self.calorieField.hidden = YES;
    self.calorieField.text = nil;
    
    return YES;
}

@end
