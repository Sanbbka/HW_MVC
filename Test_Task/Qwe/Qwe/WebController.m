//
//  WebController.m
//  Qwe
//
//  Created by Admin on 25.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "WebController.h"

@implementation WebController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        
    }
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *imageURLString = @"https://github.com/Sanbbka";
    NSURL *imageURL = [NSURL URLWithString:imageURLString];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL: imageURL];
    [self.WebView loadRequest:request];
    
}
@end
