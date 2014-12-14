//
//  ViewController.m
//  Qwe
//
//  Created by Admin on 24.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"
#import "ImageCell.h";
#import "Article.h";
#import "UIImageView+AFNetworking.h";


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        _data = [Article fetchData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *const CellId = @"ImageCell";
    
    ImageCell *cell = [tableView dequeueReusableCellWithIdentifier:CellId];
    Article *item = [_data objectAtIndex:indexPath.row];
    
    NSString *imageURLString = item.imageName;
    NSURL *imageURL = [NSURL URLWithString:imageURLString];
    
    cell.cellTextLabel.text = item.title;
    [cell.cellImageView setImageWithURL:imageURL];
    
    return cell;
}


@end
