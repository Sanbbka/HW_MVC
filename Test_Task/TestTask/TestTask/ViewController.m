//
//  ViewController.m
//  TestTask
//
//  Created by Admin on 22.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize jsonData;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [ NSURL URLWithString: @"http://twitter.com/statuses/public_timeline.json" ];
    
    // создаем объект NSURLRequest - запрос
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:url
                                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                                          timeoutInterval:60.0];
    // запускаем соединение
    NSURLConnection *theConnection=[[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
    if (theConnection) {
        self.jsonData = [NSMutableData data];
    } else {
        NSLog(@"Connection failed");
    }
  //  [theConnection release];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 * При получении новой порции данных добавляем их к уже полученным
 **/
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [jsonData appendData:data];
}

/**
 * Если соединение не удалось - выводим в консоль сообщение об ошибке
 **/
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"%@", error);
}

/**
 * Когда все данные получены - разбираем их
 **/
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    // сохраняем полученные данные в строку result
    NSString *result = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    // можно вывести в консоль и посмотреть - что мы получили
    NSLog( @"%@",result );
    
    
    // создаем объект с JSON-парсером
    SBJsonParser *jsonParser = [[SBJsonParser alloc] init];
    
    
    // Парсим строку данных result в объект класса NSArray (массив)
    NSArray *dataObject = [jsonParser objectWithString:result error:nil];
    
    // тут можно поставить Breakpoint
    
    // не забываем убить объекты
  //  [jsonParser release];
  //  [result release];
}

@end
