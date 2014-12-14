//
//  ViewController2.m
//  Qwe
//
//  Created by Admin on 24.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController2.h"
#import "WebController.h"

@interface ViewController2() <UIActionSheetDelegate>
@end
@implementation ViewController2 

- (IBAction)buttunGit:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Действия" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"open",@"open with safari", nil];
    [actionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *imageURLString = @"https://github.com/Sanbbka";
    NSURL *imageURL = [NSURL URLWithString:imageURLString];
    
    switch (buttonIndex) {
        
        case 0:
            [self performSegueWithIdentifier:@"OpenURL" sender:self];
            break;
        case 1:
            [[UIApplication sharedApplication] openURL: imageURL];
            break;
            
        default:
            break;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString *imageURLString = @"https://github.com/Sanbbka";
    NSURL *imageURL = [NSURL URLWithString:imageURLString];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL: imageURL];
    WebController *controlloer = segue.destinationViewController;
    [controlloer.WebView loadRequest: request];
}





@end
