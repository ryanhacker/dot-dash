//
//  RYTCipherView.m
//  dot&dash
//
//  Created by 翟 晓宇 on 12-11-7.
//  Copyright (c) 2012年 Ryantech. All rights reserved.
//

#import "RYTCipherView.h"
NSInteger i = 0;
@interface RYTCipherView ()

@end

@implementation RYTCipherView
@synthesize inputText;
@synthesize outputText;

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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UILongPressGestureRecognizer *longPressRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
    UIButton *bt = (UIButton*)[self.view viewWithTag:1];
    longPressRecognizer.minimumPressDuration = 0.7;
    longPressRecognizer.allowableMovement = 1024;
    [bt addGestureRecognizer:longPressRecognizer];
}

- (void)viewDidUnload
{
    [self setInputText:nil];
    [self setOutputText:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)longPress:(UILongPressGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateBegan)
        inputText.text = [inputText.text stringByAppendingString:@"-"];
}

- (IBAction)splitPress:(UIButton *)sender
{
    inputText.text = [inputText.text stringByAppendingString:@"/"];

}

- (IBAction)shortPress:(UIButton *)sender
{
    inputText.text = [inputText.text stringByAppendingString:@"*"];
}

- (IBAction)convert:(UIButton *)sender
{
    if (i == 1)
    {
        NSMutableArray *e2m = [[NSMutableArray alloc] init];
        NSString *str = inputText.text, *cur;
        NSUInteger len = [str length];
        for(NSUInteger q=0; q<len; q++)
        {
            cur = [[[NSNumberFormatter alloc]init] stringFromNumber:[NSNumber numberWithChar:[str characterAtIndex:q]]];
            [e2m addObject:cur];
            if ([cur isEqualToString:@"65"])
                outputText.text = [outputText.text stringByAppendingString:@"*-"];
            if ([cur isEqualToString:@"66"])
                outputText.text = [outputText.text stringByAppendingString:@"-***"];
            if ([cur isEqualToString:@"67"])
                outputText.text = [outputText.text stringByAppendingString:@"-*-*"];
            if ([cur isEqualToString:@"68"])
                outputText.text = [outputText.text stringByAppendingString:@"-**"];
            if ([cur isEqualToString:@"69"])
                outputText.text = [outputText.text stringByAppendingString:@"*"];
            if ([cur isEqualToString:@"70"])
                outputText.text = [outputText.text stringByAppendingString:@"**-*"];
            if ([cur isEqualToString:@"71"])
                outputText.text = [outputText.text stringByAppendingString:@"--*"];
            if ([cur isEqualToString:@"72"])
                outputText.text = [outputText.text stringByAppendingString:@"****"];
            if ([cur isEqualToString:@"73"])
                outputText.text = [outputText.text stringByAppendingString:@"**"];
            if ([cur isEqualToString:@"74"])
                outputText.text = [outputText.text stringByAppendingString:@"*---"];
            if ([cur isEqualToString:@"75"])
                outputText.text = [outputText.text stringByAppendingString:@"-*-"];
            if ([cur isEqualToString:@"76"])
                outputText.text = [outputText.text stringByAppendingString:@"*-**"];
            if ([cur isEqualToString:@"77"])
                outputText.text = [outputText.text stringByAppendingString:@"--"];
            if ([cur isEqualToString:@"78"])
                outputText.text = [outputText.text stringByAppendingString:@"-*"];
            if ([cur isEqualToString:@"79"])
                outputText.text = [outputText.text stringByAppendingString:@"---"];
            if ([cur isEqualToString:@"80"])
                outputText.text = [outputText.text stringByAppendingString:@"*--*"];
            if ([cur isEqualToString:@"81"])
                outputText.text = [outputText.text stringByAppendingString:@"--*-"];
            if ([cur isEqualToString:@"82"])
                outputText.text = [outputText.text stringByAppendingString:@"*-*"];
            if ([cur isEqualToString:@"83"])
                outputText.text = [outputText.text stringByAppendingString:@"***"];
            if ([cur isEqualToString:@"84"])
                outputText.text = [outputText.text stringByAppendingString:@"-"];
            if ([cur isEqualToString:@"85"])
                outputText.text = [outputText.text stringByAppendingString:@"**-"];
            if ([cur isEqualToString:@"86"])
                outputText.text = [outputText.text stringByAppendingString:@"***-"];
            if ([cur isEqualToString:@"87"])
                outputText.text = [outputText.text stringByAppendingString:@"*--"];
            if ([cur isEqualToString:@"88"])
                outputText.text = [outputText.text stringByAppendingString:@"-**-"];
            if ([cur isEqualToString:@"89"])
                outputText.text = [outputText.text stringByAppendingString:@"-*--"];
            if ([cur isEqualToString:@"90"])
                outputText.text = [outputText.text stringByAppendingString:@"--**"];
            if ([cur isEqualToString:@"32"])
                outputText.text = [outputText.text stringByAppendingString:@"*-*-*-"];
            if ([cur isEqualToString:@"44"])
                outputText.text = [outputText.text stringByAppendingString:@"--**--"];
            if ([cur isEqualToString:@"63"])
                outputText.text = [outputText.text stringByAppendingString:@"**--**"];
            if ([cur isEqualToString:@"64"])
                outputText.text = [outputText.text stringByAppendingString:@"*--*-*"];
            if ([cur isEqualToString:@"58"])
                outputText.text = [outputText.text stringByAppendingString:@"---***"];
            if ([cur isEqualToString:@"47"])
                outputText.text = [outputText.text stringByAppendingString:@"-**-*"];
            if ([cur isEqualToString:@"33"])
                outputText.text = [outputText.text stringByAppendingString:@"-*-*--"];
            if ([cur isEqualToString:@"48"])
                outputText.text = [outputText.text stringByAppendingString:@"-----"];
            if ([cur isEqualToString:@"49"])
                outputText.text = [outputText.text stringByAppendingString:@"*----"];
            if ([cur isEqualToString:@"50"])
                outputText.text = [outputText.text stringByAppendingString:@"**---"];
            if ([cur isEqualToString:@"51"])
                outputText.text = [outputText.text stringByAppendingString:@"***--"];
            if ([cur isEqualToString:@"52"])
                outputText.text = [outputText.text stringByAppendingString:@"****-"];
            if ([cur isEqualToString:@"53"])
                outputText.text = [outputText.text stringByAppendingString:@"*****"];
            if ([cur isEqualToString:@"54"])
                outputText.text = [outputText.text stringByAppendingString:@"-****"];
            if ([cur isEqualToString:@"55"])
                outputText.text = [outputText.text stringByAppendingString:@"--***"];
            if ([cur isEqualToString:@"56"])
                outputText.text = [outputText.text stringByAppendingString:@"---**"];
            if ([cur isEqualToString:@"57"])
                outputText.text = [outputText.text stringByAppendingString:@"----*"];
            outputText.text = [outputText.text stringByAppendingString:@"/"];
        }
    }
    else if (i ==0)
    {
        NSArray *m2e = [inputText.text componentsSeparatedByString:@"/"];
        int p;
        NSString *cur;
        for(p=0;p<[m2e count];p++)
        {
            cur=[m2e objectAtIndex: p];
            if ([cur isEqualToString:@"*-"])
                outputText.text = [outputText.text stringByAppendingString:@"A"];
            if ([cur isEqualToString:@"-***"])
                outputText.text = [outputText.text stringByAppendingString:@"B"];
            if ([cur isEqualToString:@"-*-*"])
                outputText.text = [outputText.text stringByAppendingString:@"C"];
            if ([cur isEqualToString:@"-**"])
                outputText.text = [outputText.text stringByAppendingString:@"D"];
            if ([cur isEqualToString:@"*"])
                outputText.text = [outputText.text stringByAppendingString:@"E"];
            if ([cur isEqualToString:@"**-*"])
                outputText.text = [outputText.text stringByAppendingString:@"F"];
            if ([cur isEqualToString:@"--*"])
                outputText.text = [outputText.text stringByAppendingString:@"G"];
            if ([cur isEqualToString:@"****"])
                outputText.text = [outputText.text stringByAppendingString:@"H"];
            if ([cur isEqualToString:@"**"])
                outputText.text = [outputText.text stringByAppendingString:@"I"];
            if ([cur isEqualToString:@"*---"])
                outputText.text = [outputText.text stringByAppendingString:@"J"];
            if ([cur isEqualToString:@"-*-"])
                outputText.text = [outputText.text stringByAppendingString:@"K"];
            if ([cur isEqualToString:@"*-**"])
                outputText.text = [outputText.text stringByAppendingString:@"L"];
            if ([cur isEqualToString:@"--"])
                outputText.text = [outputText.text stringByAppendingString:@"M"];
            if ([cur isEqualToString:@"-*"])
                outputText.text = [outputText.text stringByAppendingString:@"N"];
            if ([cur isEqualToString:@"---"])
                outputText.text = [outputText.text stringByAppendingString:@"O"];
            if ([cur isEqualToString:@"*--*"])
                outputText.text = [outputText.text stringByAppendingString:@"P"];
            if ([cur isEqualToString:@"--*-"])
                outputText.text = [outputText.text stringByAppendingString:@"Q"];
            if ([cur isEqualToString:@"*-*"])
                outputText.text = [outputText.text stringByAppendingString:@"R"];
            if ([cur isEqualToString:@"***"])
                outputText.text = [outputText.text stringByAppendingString:@"S"];
            if ([cur isEqualToString:@"-"])
                outputText.text = [outputText.text stringByAppendingString:@"T"];
            if ([cur isEqualToString:@"**-"])
                outputText.text = [outputText.text stringByAppendingString:@"U"];
            if ([cur isEqualToString:@"***-"])
                outputText.text = [outputText.text stringByAppendingString:@"V"];
            if ([cur isEqualToString:@"*--"])
                outputText.text = [outputText.text stringByAppendingString:@"W"];
            if ([cur isEqualToString:@"-**-"])
                outputText.text = [outputText.text stringByAppendingString:@"X"];
            if ([cur isEqualToString:@"-*--"])
                outputText.text = [outputText.text stringByAppendingString:@"Y"];
            if ([cur isEqualToString:@"--**"])
                outputText.text = [outputText.text stringByAppendingString:@"Z"];
            if ([cur isEqualToString:@"-----"])
                outputText.text = [outputText.text stringByAppendingString:@"0"];
            if ([cur isEqualToString:@"*---"])
                outputText.text = [outputText.text stringByAppendingString:@"1"];
            if ([cur isEqualToString:@"**---"])
                outputText.text = [outputText.text stringByAppendingString:@"2"];
            if ([cur isEqualToString:@"***--"])
                outputText.text = [outputText.text stringByAppendingString:@"3"];
            if ([cur isEqualToString:@"****-"])
                outputText.text = [outputText.text stringByAppendingString:@"4"];
            if ([cur isEqualToString:@"*****"])
                outputText.text = [outputText.text stringByAppendingString:@"5"];
            if ([cur isEqualToString:@"-****"])
                outputText.text = [outputText.text stringByAppendingString:@"6"];
            if ([cur isEqualToString:@"--***"])
                outputText.text = [outputText.text stringByAppendingString:@"7"];
            if ([cur isEqualToString:@"---**"])
                outputText.text = [outputText.text stringByAppendingString:@"8"];
            if ([cur isEqualToString:@"-----*"])
                outputText.text = [outputText.text stringByAppendingString:@"9"];
            if ([cur isEqualToString:@"*-*-*-"])
                outputText.text = [outputText.text stringByAppendingString:@" "];
            if ([cur isEqualToString:@"--**--"])
                outputText.text = [outputText.text stringByAppendingString:@","];
            if ([cur isEqualToString:@"**--**"])
                outputText.text = [outputText.text stringByAppendingString:@"?"];
        }
        
    }
    
}

- (IBAction)toggleControls:(UISegmentedControl *)sender
{
   if ([sender selectedSegmentIndex] == 0) {
        i = 0;
    }
    else {
        i = 1;
    }
}
- (IBAction)backgroundTap:(id)sender
{
    [inputText resignFirstResponder];
    [outputText resignFirstResponder];
}
- (IBAction)doneEditing:(id)sender
{
    [sender resignFirstResponder];
}
@end
