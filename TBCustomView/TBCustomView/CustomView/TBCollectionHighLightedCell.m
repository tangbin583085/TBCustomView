//
//  TBCollectionHighLightedCell.h.m
//  TBScrollViewEmpty
//
//  Created by 汤彬 on 2017/11/11.
//  Copyright © 2017年 hanchuangkeji. All rights reserved.
//／／／

#import "TBCollectionHighLightedCell.h"

@interface TBCollectionHighLightedCell()

@property (nonatomic, weak)UIView *hightedLigthedBackGround;

@end

@implementation TBCollectionHighLightedCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


- (UIView *)hightedLigthedBackGround {
    if (_hightedLigthedBackGround == nil) {
        UIView *hightedLigthedBackGround = [[UIView alloc] init];

        // 默认灰色 透明度为0.5
        hightedLigthedBackGround.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
        hightedLigthedBackGround.frame = self.bounds;;
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
    
    // 设置圆角
    if (self.tb_cornerRadius > 0) {
        self.hightedLigthedBackGround.clipsToBounds = YES;
        self.hightedLigthedBackGround.layer.cornerRadius = self.tb_cornerRadius;
    }

    if (highlighted) {
        [self bringSubviewToFront:self.hightedLigthedBackGround];
        self.hightedLigthedBackGround.hidden = NO;
    }else {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)NSEC_PER_SEC * 0.2), dispatch_get_main_queue(), ^{
            self.hightedLigthedBackGround.hidden = YES;
        });
    }
}

@end
