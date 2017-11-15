//
//  TBCollectionHighLightedCell.h.h
//  TBScrollViewEmpty
//
//  Created by 汤彬 on 2017/11/11.
//  Copyright © 2017年 hanchuangkeji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+HKExtension.h"

@interface TBCollectionHighLightedCell : UICollectionViewCell

@property (nonatomic, strong)UIColor *hightedLigthedColor;// 高亮的背景颜色

@property (nonatomic, assign)CGFloat tb_cornerRadius;// 高亮的圆角
@end
