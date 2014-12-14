//
//  main.m
//  Admin
//
//  Created by Admin on 19.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        NSInteger *a = 10;
        NSInteger *b = 12;

        *a = *a+*b;
        
        NSLog(@"%d", a);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
