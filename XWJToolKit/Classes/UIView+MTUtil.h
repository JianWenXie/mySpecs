//
//  UIView+MTUtil.h
//  xsh
//
//  Created by tasama on 2018/2/6.
//  Copyright © 2018年 Moemoe Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MTUtil)

@property (nonatomic, assign) CGFloat mtCenterY;

@property (nonatomic, assign) CGFloat mtWidth;

@property (nonatomic, assign) CGFloat mtHeight;

@property (nonatomic, assign) CGFloat mtLeft;

@property (nonatomic, assign) CGFloat mtRight;

@property (nonatomic, assign) CGFloat mtTop;

@property (nonatomic, assign) CGFloat mtBottom;

@end


@interface UIView (MTShadow)

- (void)appendMTShadow;

- (void)appendShadow:(CGSize)shadowOffset
       shadowOpacity:(CGFloat)shadowOpacity
        shadowRadius:(CGFloat)shadowRadius
         shadowColor:(UIColor *)shadowColor;

@end



@interface UIView (MTSearchSubview)

- (UIView *)subviewOfClassName:(NSString*)clsName;

@end
