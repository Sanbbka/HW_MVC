//
//  ViewController.m
//  ZagruzkaImage
//
//  Created by Admin on 23.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *Image;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSData *receivedData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://fbstatic-a.akamaihd.net/rsrc.php/v2/yx/r/pyNVUg5EM0j.png"]];
    self.image=nil;
    UIImage *img = [[UIImage alloc] initWithData:receivedData ];
    self.image = img;
    
    
    UIImageView *kk = img;
    
}


@end
