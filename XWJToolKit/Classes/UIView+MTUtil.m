//
//  UIView+MTUtil.m
//  xsh
//
//  Created by tasama on 2018/2/6.
//  Copyright © 2018年 Moemoe Technology. All rights reserved.
//

#import "UIView+MTUtil.h"

@implementation UIView (MTUtil)

- (void)setMtCenterY:(CGFloat)mtCenterY {
    CGPoint center = self.center;
    center.y = mtCenterY;
    self.center = center;
}

- (CGFloat)mtCenterY {
    return self.center.y;
}

- (void)setMtWidth:(CGFloat)mtWidth {
    
    CGSize size = self.bounds.size;
    size.width = mtWidth;
    self.bounds = CGRectMake(0, 0, size.width, size.height);
}

- (CGFloat)mtWidth {
    
    return self.bounds.size.width;
}

- (void)setMtHeight:(CGFloat)mtHeight {
    
    CGSize size = self.bounds.size;
    size.height = mtHeight;
    self.bounds = CGRectMake(0, 0, size.width, size.height);
}

- (CGFloat)mtHeight {
    
    return self.bounds.size.height;
}

- (void)setMtLeft:(CGFloat)mtLeft {
    
    CGPoint origin = self.frame.origin;
    origin.x = mtLeft;
    
    self.frame = CGRectOffset(self.bounds, origin.x, origin.y);
}

- (CGFloat)mtLeft {
    
    return self.frame.origin.x;
}

- (void)setMtRight:(CGFloat)mtRight {
    
    CGPoint origin = self.frame.origin;
    origin.x = mtRight - self.bounds.size.width;
    
    self.frame = CGRectOffset(self.bounds, origin.x, origin.y);
}

- (CGFloat)mtRight {
    
    return self.frame.origin.x + self.bounds.size.width;
}

- (void)setMtTop:(CGFloat)mtTop {
    
    CGPoint origin = self.frame.origin;
    origin.y = mtTop;
    
    self.frame = CGRectOffset(self.bounds, origin.x, origin.y);
}

- (CGFloat)mtTop {
    
    return self.frame.origin.y;
}

- (void)setMtBottom:(CGFloat)mtBottom {
    
    CGPoint origin = self.frame.origin;
    origin.y = mtBottom - self.bounds.size.height;
    
    self.frame = CGRectOffset(self.bounds, origin.x, origin.y);
}

- (CGFloat)mtBottom {
    
    return self.frame.origin.y + self.bounds.size.height;
}

@end

@implementation UIView (MTShadow)

- (void)appendMTShadow {
    
    [self appendShadow:CGSizeZero
         shadowOpacity:0.8f
          shadowRadius:3
           shadowColor:FRONT_SHADOW_C];//
}

- (void)appendShadow:(CGSize)shadowOffset
       shadowOpacity:(CGFloat)shadowOpacity
        shadowRadius:(CGFloat)shadowRadius
         shadowColor:(UIColor *)shadowColor {
    
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOffset = shadowOffset;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowRadius = shadowRadius;
}

@end


@implementation UIView (MTSearchSubview)

- (UIView *)subviewOfClassName:(NSString*)clsName {
    
    for (UIView *subView in self.subviews) {
        
        if ([NSStringFromClass(subView.class) isEqualToString:clsName]) {
            return subView;
        }
        
        UIView *resultFound = [subView subviewOfClassName:clsName];
        if (resultFound) {
            return resultFound;
        }
    }
    return nil;
}

@end
