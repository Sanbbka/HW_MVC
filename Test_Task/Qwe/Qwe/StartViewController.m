//
//  StartViewController.m
//  Qwe
//
//  Created by Admin on 26.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "StartViewController.h"

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if([self connectedToInternet] == NO)
    {
        // Not connected to the internet
        
        NSError *error;
        NSLog(@"%@", error);
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Ошибка" message: @"Not connection" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        
        
        
    }
    else
    {
        NSLog(@"vse ZBS");
        [self performSegueWithIdentifier:@"qwe" sender:self];
        
    }
    
    
    
}

- (void)connectedToInternet
{
    NSString *urlString = @"http://www.google.com/";
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"HEAD"];
    NSHTTPURLResponse *response;
    
    [NSURLConnection sendSynchronousRequest:request returningResponse:&response error: NULL];
    
    if([response statusCode] == 200)
    {
        // Not connected to the internet
        
        NSError *error;
        NSLog(@"%@", error);
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Ошибка" message: @"Not connection" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        
        
        
    }
    else
    {
        NSLog(@"vse ZBS");
        [self performSegueWithIdentifier:@"qwe" sender:self];
        
    }

    
}

@end
