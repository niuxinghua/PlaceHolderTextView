//
//  ViewController.m
//  PlaceHolderTextView
//
//  Created by  肖红 on 15/7/31.
//  Copyright (c) 2015年  肖红. All rights reserved.
//

#import "ViewController.h"
#import "PlaceHolderTextView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet PlaceHolderTextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textView.placeHolderText = @"hello world";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
