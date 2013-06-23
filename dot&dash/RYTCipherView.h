//
//  RYTCipherView.h
//  dot&dash
//
//  Created by 翟 晓宇 on 12-11-7.
//  Copyright (c) 2012年 Ryantech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RYTCipherView : UIViewController

- (void)longPress:(UILongPressGestureRecognizer *)sender;

- (IBAction)doneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;

- (IBAction)splitPress:(UIButton *)sender;
- (IBAction)shortPress:(UIButton *)sender;
- (IBAction)convert:(UIButton *)sender;
- (IBAction)toggleControls:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UITextField *inputText;
@property (weak, nonatomic) IBOutlet UITextField *outputText;

@end
