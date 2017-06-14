//
//  PGVTRoundedLabel.h
//  PGVisualTweeks
//
//  Created by Guilherme Ramos on 14/06/17.
//  Copyright © 2017 Progeekt. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE @interface PGVTRoundedLabel : UILabel

@property (nonatomic) IBInspectable BOOL autoPadding;

@property (nonatomic) IBInspectable CGFloat cornerRadius;

@property (nonatomic) IBInspectable CGFloat paddingX;
@property (nonatomic) IBInspectable CGFloat paddingY;

@property (nonatomic) UIEdgeInsets edgeInsets;

@end
