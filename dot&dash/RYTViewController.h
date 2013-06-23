//
//  RYTViewController.h
//  dot&dash
//
//  Created by 翟 晓宇 on 12-11-7.
//  Copyright (c) 2012年 Ryantech. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RYTPageView;
@class RYTCipherView;
@interface RYTViewController : UIViewController
@property (strong, nonatomic) RYTPageView *page;
@property (strong, nonatomic) RYTCipherView *cipher;
- (IBAction)pageViews:(id)sender;
- (IBAction)cipherViews:(id)sender;
@end
