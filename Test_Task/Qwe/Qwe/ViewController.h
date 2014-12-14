//
//  ViewController.h
//  Qwe
//
//  Created by Admin on 24.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource>
{
    NSArray *_data;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

