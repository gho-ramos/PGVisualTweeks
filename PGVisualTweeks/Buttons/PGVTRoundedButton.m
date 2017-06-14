//
//  PGVTButtonTag.m
//  PGVisualTweeks
//
//  Created by Guilherme Ramos on 13/06/17.
//  Copyright © 2017 Progeekt. All rights reserved.
//

#import "PGVTRoundedButton.h"

@implementation PGVTRoundedButton
@synthesize borderColor = _borderColor;

#pragma mark Getters
-(UIColor *)borderColor {
    if(_borderColor == nil) {
        _borderColor = self.titleLabel.tintColor;
    }
    return _borderColor;
}


#pragma mark Setters
-(void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    self.layer.borderColor = self.borderColor.CGColor;
}

-(void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
    [self reloadStyle];
}

-(void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    self.layer.borderWidth = borderWidth;
    [self reloadStyle];
}

#pragma mark Initializer
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupButton];
    }
    return self;
}

- (instancetype)initWithTitle:(NSString*)frame
{
    self = [super initWithFrame:CGRectZero];
    if (self) {
        [self setupButton];
    }
    return self;
}

#pragma mark Layout
-(void) setupButton {
    [self reloadStyle];
}

-(void) reloadStyle {
    if (self.isHighlighted) {
        self.layer.borderColor = self.titleLabel.highlightedTextColor.CGColor;
    } else {
        self.layer.borderColor = self.borderColor.CGColor;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
