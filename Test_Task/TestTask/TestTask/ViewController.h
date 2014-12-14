//
//  ViewController.h
//  TestTask
//
//  Created by Admin on 22.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBJson.h"

@interface ViewController : UITableViewController  {
    NSMutableData *jsonData;
}

@property (nonatomic, retain) NSMutableData *jsonData;

@end
