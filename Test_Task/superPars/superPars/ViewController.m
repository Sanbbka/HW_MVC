//
//  ViewController.m
//  superPars
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
    NSData *allData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://jsonplaceholder.typicode.com/photos"]];
    
    NSError *error;
  
    

    
    id allKeys = [NSJSONSerialization JSONObjectWithData:allData options:NSJSONWritingPrettyPrinted error:&error];
    /*
    for (int i=0; i<[allKeys count]; i++) {
        NSDictionary *arrayResult = [allKeys objectAtIndex:i];
        NSLog(@"name=%@",[arrayResult objectForKey:@"id"]);
        NSLog(@"albumId=%@",[arrayResult objectForKey:@"albumId"]);
        NSLog(@"title=%@",[arrayResult objectForKey:@"title"]);
        NSLog(@"url=%@",[arrayResult objectForKey:@"url"]);
        
    }
*/
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
