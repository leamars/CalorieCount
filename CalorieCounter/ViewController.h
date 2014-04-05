//
//  ViewController.h
//  CalorieCounter
//
//  Created by Lea Marolt on 4/2/14.
//  Copyright (c) 2014 Lea Marolt Sonnenschein. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate, UITextFieldDelegate>

// outlets
@property (strong, nonatomic) IBOutlet UILabel *calorieCount;
@property (strong, nonatomic) IBOutlet UIButton *addCalories;
@property (strong, nonatomic) IBOutlet UIButton *subtractCalories;
@property (strong, nonatomic) IBOutlet UITextView *calorieNumber;
@property (strong, nonatomic) IBOutlet UITextField *calorieField;

// actions
- (IBAction)addCalories:(id)sender;
- (IBAction)subtractCalories:(id)sender;


@end
