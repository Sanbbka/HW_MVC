//
//  ViewController.m
//  qewrtry
//
//  Created by Admin on 22.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL* url = [NSURL URLWithString:@"http://jsonplaceholder.typicode.com/photos"];
                  NSURL* request = [NSURLRequest requestWithURL:url];
                //  NSData* kittenImageData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
              //    UIImage* kittenImage = [UIImage imageWithData: kittenImageData];
                  //NSData synchronous API
                  NSData* jsonData = [NSData dataWithContentsOfURL:url];
   // kittenImage = [UIImage imageWithData:data];
    NSDictionary *personDict = [NSJSONSerialization JSONObjectWithData :jsonData options:nil error:nil];
    NSDictionary* address = personDict[@""];
    NSString* postalCode = address[@"title"];
    
    
    NSLog(@"ss%@", postalCode);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
