//
//  ViewController.m
//  Test_Task
//
//  Created by Admin on 21.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"
#import "RSSParser.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //http://jsonplaceholder.typicode.com/photos
    //http://itdox.ru/feed/
    NSURL *url = [NSURL URLWithString:@"http://itdox.ru/feed/"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    
    
    [RSSParser parseRSSFeedForRequest:request success:^(NSArray *feedItems) {
        for(RSSItem *item in feedItems){
            NSLog(@"%@", item.title);
        }
    } failure:^(NSError *error) {
    }];
    
   // _data = [NCData fetchData];

}



@end
