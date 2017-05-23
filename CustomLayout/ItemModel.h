//
//  ItemModel.h
//  CustomLayout
//
//  Created by liicon on 2017/5/23.
//  Copyright © 2017年 max. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ItemModel : NSObject

@property(strong,nonatomic) UIImage *image;
@property(assign, nonatomic) CGFloat itemWidth;
@property(assign, nonatomic) CGFloat itemHeight;

@end
