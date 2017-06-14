//
//  PGVTRoundedLabel.m
//  PGVisualTweeks
//
//  Created by Guilherme Ramos on 14/06/17.
//  Copyright © 2017 Progeekt. All rights reserved.
//

#import "PGVTRoundedLabel.h"

@implementation PGVTRoundedLabel

#pragma mark Setters
-(void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

-(void)setPaddingX:(CGFloat)paddingX {
    _paddingX = paddingX;
}

-(void)setPaddingY:(CGFloat)paddingY {
    _paddingY = paddingY;
}

-(CGSize)intrinsicContentSize {
    CGSize size = [super intrinsicContentSize];
    
    size.width = size.width + (self.paddingX * 2);
    size.height = size.height + (self.paddingY * 2);
    
    return size;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupLabel];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupLabel];
    }
    return self;
}

-(void)setupLabel {
    self.textAlignment = NSTextAlignmentCenter;
}

#pragma mark Drawings

-(void)layoutSubviews {
    [super layoutSubviews];
    [self setupLabel];
}

-(void)prepareForInterfaceBuilder {
    [super prepareForInterfaceBuilder];
    [self setupLabel];
}

-(void)drawTextInRect:(CGRect)rect {
    CGSize size = [self intrinsicContentSize];
    CGRect frame = CGRectMake(rect.origin.x, rect.origin.y, size.width, size.height);
    [super drawTextInRect:frame];
    [self setupLabel];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//    
//}

@end
