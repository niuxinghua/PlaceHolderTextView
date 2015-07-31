//
//  PlaceHolderTextView.h
//  PlaceHolderTextView
//
//  Created by  肖红 on 15/7/31.
//  Copyright (c) 2015年  肖红. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaceHolderTextView : UITextView

@property (strong, nonatomic) UIColor * placeHolderColor;

@property (copy, nonatomic) NSString * placeHolderText;

@property (assign, nonatomic) CGPoint holderStartPoint;

@property (strong, nonatomic) UIFont *placeHolderFont;

@end
