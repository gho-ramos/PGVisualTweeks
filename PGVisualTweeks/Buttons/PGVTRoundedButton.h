//
//  PGVTButtonTag.h
//  PGVisualTweeks
//
//  Created by Guilherme Ramos on 13/06/17.
//  Copyright © 2017 Progeekt. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE @interface PGVTRoundedButton : UIButton

-(instancetype)initWithTitle:(NSString*)title;

@property (nonatomic) IBInspectable CGFloat cornerRadius;
@property (nonatomic) IBInspectable CGFloat borderWidth;

@property (nonatomic, strong) IBInspectable UIColor *borderColor;

@end
