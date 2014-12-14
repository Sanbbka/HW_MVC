//
//  StartViewController.h
//  Qwe
//
//  Created by Admin on 26.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *circle;
- (BOOL)connectedToInternet;
@end
