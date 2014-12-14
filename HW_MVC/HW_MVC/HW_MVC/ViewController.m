//
//  ViewController.m
//  HW_MVC
//
//  Created by Admin on 08.11.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *but1;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;
@property (weak, nonatomic) IBOutlet UISwitch *vkl;


@end

@implementation ViewController
- (IBAction)booleanF:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    


    
    NSData *color = [[NSUserDefaults standardUserDefaults] objectForKey:@"color"];
    if (color)
        self.but1.backgroundColor = [NSKeyedUnarchiver unarchiveObjectWithData:color];
    else
    {
        self.but1.backgroundColor = [UIColor whiteColor];
    }
    
    NSString *str = [[NSUserDefaults standardUserDefaults] objectForKey:@"text"];
    if (str)
        self.textField.text = str;
    else{
        self.textField.text = @"";
    }
    
    NSNumber *location = [[NSUserDefaults standardUserDefaults] objectForKey:@"slider"];
    location = location ? location : @0;
    self.slider.value = location.floatValue;
    
    NSNumber *i = [[NSUserDefaults standardUserDefaults]objectForKey:@"segment"];
    i = i ? i : @0;
    self.segControl.selectedSegmentIndex = i.integerValue;
    
    NSNumber *i1 = [[NSUserDefaults standardUserDefaults] objectForKey:@"switch"];
    i1 = i1 ? i1 : @0;
    [self.vkl setOn:i1.boolValue animated:NO];


}
/////////////
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
////////////
- (IBAction)Button:(UIButton *)sender {
    UIColor *color = [self randColor];
     self.but1.backgroundColor = color;
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:color] forKey:@"color"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    }


- (IBAction)slider:(id)sender {
    float ttt = self.slider.value;
    [[NSUserDefaults standardUserDefaults] setObject:@(ttt) forKey:@"slider"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (IBAction)segment:(id)sender {
    int i = self.segControl.selectedSegmentIndex;
    [[NSUserDefaults standardUserDefaults] setObject:@(i) forKey:@"segment"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (IBAction)switch:(id)sender {
    int c = self.vkl.isOn;
    [[NSUserDefaults standardUserDefaults] setObject:@(c) forKey:@"switch"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (IBAction)TextField:(UITextField *)sender {
    NSString *s = self.textField.text;
    [[NSUserDefaults standardUserDefaults] setObject:s forKey:@"text"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


///////////////
- (UIColor *)randColor
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}
@end
