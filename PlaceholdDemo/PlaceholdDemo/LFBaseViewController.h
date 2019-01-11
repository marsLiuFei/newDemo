//
//  LFBaseViewController.h
//  PlaceholdDemo
//
//  Created by 刘飞 on 2018/11/13.
//  Copyright © 2018年 ahxb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    NoMoreDataTypeDefult = 0,
    NoMoreDataTypeNoLogin,
    NoMoreDataTypeNoShopCar,
    NoMoreDataTypeNoSearch,
    NoMoreDataTypeNoMessage,
    NoMoreDataTypeNoOrder,
} NoMoreDataType;

@interface LFBaseViewController : UIViewController
@property (nonatomic,assign)NoMoreDataType NoMoreDataType;
@end

NS_ASSUME_NONNULL_END
