//
//  Article.m
//  Qwe
//
//  Created by Admin on 24.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Article.h"

@implementation Article

+(NSArray *)fetchData
{
    NSData *allData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://jsonplaceholder.typicode.com/photos"]];
    NSError *error;
    id allKeys = [NSJSONSerialization JSONObjectWithData:allData options:NSJSONWritingPrettyPrinted error:&error];
 
    NSMutableArray *result = [NSMutableArray array];
    
    Article *item;
    
    for (int i=0; i<[allKeys count]; i++) {
        NSDictionary *arrayResult = [allKeys objectAtIndex:i];
        item = [[Article alloc]init];
        item.title = [arrayResult objectForKey:@"title"];
        item.imageName = [arrayResult objectForKey:@"thumbnailUrl"];
        [result addObject:item];
    }
    return result;
}


@end
