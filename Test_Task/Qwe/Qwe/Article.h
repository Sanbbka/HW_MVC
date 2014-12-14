//
//  Article.h
//  Qwe
//
//  Created by Admin on 24.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Article : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *imageName;

+(NSArray *)fetchData;

@end
