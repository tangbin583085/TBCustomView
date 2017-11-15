//
//  TBHightedLigthedBtn.m
//  TBCoreData8
//
//  Created by hanchuangkeji on 2017/11/10.
//  Copyright © 2017年 hanchuangkeji. All rights reserved.
////

#import "TBHightedLigthedBtn.h"

@interface TBHightedLigthedBtn()
@property (nonatomic, weak)UIView *hightedLigthedBackGround;

@end

@implementation TBHightedLigthedBtn

- (UIView *)hightedLigthedBackGround {
    if (_hightedLigthedBackGround == nil) {
        UIView *hightedLigthedBackGround = [[UIView alloc] init];
        
        // 默认灰色 透明度为0.5
        hightedLigthedBackGround.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
        hightedLigthedBackGround.frame = self.bounds;
        hightedLigthedBackGround.clipsToBounds = YES;
        hightedLigthedBackGround.layer.cornerRadius = 2.0;
        [self addSubview:hightedLigthedBackGround];
        _hightedLigthedBackGround = hightedLigthedBackGround;
    }
    return _hightedLigthedBackGround;
}

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    
    // 设置高亮颜色
    if (self.hightedLigthedColor) {
        self.hightedLigthedBackGround.backgroundColor = self.hightedLigthedColor;
    }
    
    if (highlighted) {
        if (self.currentBackgroundImage) {
            // 有背景图片222
            UIImageView *backgroundImageView =  (UIImageView *)self.subviews[0];
            [self insertSubview:self.hightedLigthedBackGround aboveSubview:backgroundImageView];
        }else{
            [self bringSubviewToFront:self.hightedLigthedBackGround];
        }
        self.hightedLigthedBackGround.hidden = NO;
    }else {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)NSEC_PER_SEC * 0.02), dispatch_get_main_queue(), ^{
            self.hightedLigthedBackGround.hidden = YES;
        });
    }
}


@end

