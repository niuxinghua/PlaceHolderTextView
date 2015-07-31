//
//  PlaceHolderTextView.m
//  PlaceHolderTextView
//
//  Created by  肖红 on 15/7/31.
//  Copyright (c) 2015年  肖红. All rights reserved.
//

#import "PlaceHolderTextView.h"

#define PLACEHOLDERFONT UIFont *placeHolderFont = self.placeHolderFont ? self.placeHolderFont : self.font

@implementation PlaceHolderTextView

- (void)setupPlaceHolder{
    _holderStartPoint = CGPointMake(5, 5);
    _placeHolderColor = [UIColor redColor];
    _placeHolderText = @"this a place holder";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChange:) name:UITextViewTextDidChangeNotification object:nil];
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupPlaceHolder];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self setupPlaceHolder];
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    if (self.placeHolderText.length > 0 && self.text.length == 0) {
        self.placeHolderFont = self.placeHolderFont ? self.placeHolderFont : self.font;
        NSDictionary* attributes = @{NSFontAttributeName:self.placeHolderFont,NSForegroundColorAttributeName:self.placeHolderColor};
        CGSize textSize = [self stringSize:self.placeHolderText];
        
        [self.placeHolderText drawInRect:CGRectMake(self.holderStartPoint.x, self.holderStartPoint.y, textSize.width, textSize.height) withAttributes:attributes];
        
    }
    
}

- (void)setPlaceHolderText:(NSString *)placeHolderText{
    _placeHolderText = [placeHolderText copy];
    
    [self setNeedsDisplay];
}

- (void)setText:(NSString *)text{
    [super setText:text];
    [self setNeedsDisplay];
}

- (void)textChange:(NSNotification *)notification{
    
    [self setNeedsDisplay];
}

- (CGSize) stringSize:(NSString *)string{

    self.placeHolderFont = self.placeHolderFont ? self.placeHolderFont : self.font;
    CGSize size = CGSizeMake(self.frame.size.width - self.holderStartPoint.x, self.frame.size.height);
    
    return [string sizeWithFont:self.placeHolderFont constrainedToSize:size];
}


- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
