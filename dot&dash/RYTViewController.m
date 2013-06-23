//
//  RYTViewController.m
//  dot&dash
//
//  Created by 翟 晓宇 on 12-11-7.
//  Copyright (c) 2012年 Ryantech. All rights reserved.
//

#import "RYTViewController.h"
#import "RYTCipherView.h"
#import "RYTPageView.h"

@interface RYTViewController ()

@end

@implementation RYTViewController
@synthesize page;
@synthesize cipher;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.cipher = [[RYTCipherView alloc] initWithNibName:@"RYTCipherView" bundle:nil];
    [self.view insertSubview:self.cipher.view atIndex:0];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (IBAction)pageViews:(id)sender
{
    if (self.page.view.superview == nil)
    {
        [UIView beginAnimations:@"View Flip" context:nil];
        [UIView setAnimationDuration:1.25];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        if (self.page == nil)
        {
            self.page = [[RYTPageView alloc] initWithNibName:@"RYTPageView" bundle:nil];
        }
        [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        [cipher.view removeFromSuperview];
        [self.view insertSubview:self.page.view atIndex:0];
    }
    [UIView commitAnimations];
}
- (IBAction)cipherViews:(id)sender
{
    if (self.cipher.view.superview == nil)
    {
        [UIView beginAnimations:@"View Flip" context:nil];
        [UIView setAnimationDuration:1.25];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        if (self.cipher == nil)
        {
            self.cipher = [[RYTCipherView alloc] initWithNibName:@"RYTCipherView" bundle:nil];
        }
        [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        [page.view removeFromSuperview];
        [self.view insertSubview:self.cipher.view atIndex:0];
    }
    [UIView commitAnimations];
}
- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview [super didReceiveMemoryWarning];
    // Release any cached data, images, etc, that aren't in use
    if (self.cipher.view.superview == nil)
        self.cipher = nil;
    else
        self.page = nil;
}

@end
