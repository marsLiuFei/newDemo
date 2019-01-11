//
//  LFBaseViewController.m
//  PlaceholdDemo
//
//  Created by 刘飞 on 2018/11/13.
//  Copyright © 2018年 ahxb. All rights reserved.
//

#import "LFBaseViewController.h"

#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)

@interface LFBaseViewController ()
{
    BOOL shouldShowEmptyData;
}
@end

@implementation LFBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//Data Source 实现方法
- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView
{
    if (_NoMoreDataType == NoMoreDataTypeDefult ) {
        return [UIImage imageNamed:@"blankpage_image_Sleep"];
    }else if (_NoMoreDataType == NoMoreDataTypeNoLogin){
        return [UIImage imageNamed:@"blankpage_image_Hi"];
    }else if (_NoMoreDataType == NoMoreDataTypeNoShopCar){
        return [UIImage imageNamed:@"shopping"];
    }else if (_NoMoreDataType == NoMoreDataTypeNoSearch){
        return [UIImage imageNamed:@"no_pro"];
    }else if (_NoMoreDataType == NoMoreDataTypeNoMessage){
        
    }else if ( _NoMoreDataType == NoMoreDataTypeNoOrder){
        return [UIImage imageNamed:@"xiangguan"];
    }
    return nil;
}
//
//返回标题文字
- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView
{
    NSString *text = @"";
    
    if (_NoMoreDataType == NoMoreDataTypeDefult ) {
        text = @"空空如也,什么也没有哦~";
    }else if (_NoMoreDataType == NoMoreDataTypeNoLogin){
        //        text = @"亲登录后再来看看吧~";
    }else if (_NoMoreDataType == NoMoreDataTypeNoShopCar){
        //        text = @"可以看看有哪些想买的";
    }else if (_NoMoreDataType == NoMoreDataTypeNoSearch){
        //        text = @"抱歉!没有搜到相关产品";
    }else if (_NoMoreDataType == NoMoreDataTypeNoMessage){
        
    }else if (_NoMoreDataType == NoMoreDataTypeNoOrder){
        text = @"您还没有相关的订单";
    }
    
    NSDictionary *attributes = @{
                                 NSFontAttributeName: [UIFont boldSystemFontOfSize:17.0f],
                                 NSForegroundColorAttributeName: RGB(74, 74, 74),
                                 };
    return [[NSAttributedString alloc] initWithString:text attributes:attributes];
}
//
//返回文字详情
- (NSAttributedString *)descriptionForEmptyDataSet:(UIScrollView *)scrollView{
    
    NSString *text =  @"";
    if (_NoMoreDataType == NoMoreDataTypeDefult ) {
        text = @"到别处看看吧";
    }else if (_NoMoreDataType == NoMoreDataTypeNoLogin){
        text = @"亲登录后再来看看吧~";
    }else if (_NoMoreDataType == NoMoreDataTypeNoShopCar){
        text = @"没有宝贝哦,不如去添加宝贝";
    }else if (_NoMoreDataType == NoMoreDataTypeNoSearch){
        text = @"抱歉!没有搜到相关产品";
    }else if (_NoMoreDataType == NoMoreDataTypeNoMessage){
        text = @"亲还没有消息哦";
    }else if (_NoMoreDataType == NoMoreDataTypeNoOrder){
        
    }
    NSMutableParagraphStyle *paragraph = [NSMutableParagraphStyle new];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    paragraph.alignment = NSTextAlignmentCenter;
    NSDictionary *attributes = @{
                                 NSFontAttributeName: [UIFont systemFontOfSize:14.0f],
                                 NSForegroundColorAttributeName:RGB(154, 164, 164),
                                 NSParagraphStyleAttributeName: paragraph
                                 };
    return [[NSAttributedString alloc] initWithString:text attributes:attributes];
    
}

-(UIView *)customViewForEmptyDataSet:(UIScrollView *)scrollView
{
    if (_NoMoreDataType == NoMoreDataTypeDefult ) {
        
    }else if (_NoMoreDataType == NoMoreDataTypeNoLogin){
        
    }else if (_NoMoreDataType == NoMoreDataTypeNoShopCar){
        
    }else if (_NoMoreDataType == NoMoreDataTypeNoSearch){
        
    }else if (_NoMoreDataType == NoMoreDataTypeNoMessage){
        
    }
    return nil;
}

//返回可以点击的按钮 上面带图片
- (UIImage *)buttonImageForEmptyDataSet:(UIScrollView *)scrollView forState:(UIControlState)state{
    
    if (_NoMoreDataType == NoMoreDataTypeDefult) {
        
    }else if (_NoMoreDataType == NoMoreDataTypeNoLogin){
        
    }else if (_NoMoreDataType == NoMoreDataTypeNoShopCar){
        
        return [UIImage imageNamed:@"btn_guang"];
        
    }else if (_NoMoreDataType == NoMoreDataTypeNoSearch){
        
    }else if (_NoMoreDataType == NoMoreDataTypeNoMessage){
        
    }else if (_NoMoreDataType == NoMoreDataTypeNoOrder){
        
    }
    return nil;
}

//返回空白区域的颜色 自定义
- (UIColor *)backgroundColorForEmptyDataSet:(UIScrollView *)scrollView{
    return [UIColor clearColor];
}

//    委托实现
//   要求知道空的状态应该渲染和显示 (Default is YES) :
- (BOOL)emptyDataSetShouldDisplay:(UIScrollView *)scrollView{
    if (!shouldShowEmptyData) {
        shouldShowEmptyData = YES;
        return NO;
    }else{
        return YES;
    }
}

// 是否允许点击 (默认是 YES) :
- (BOOL)emptyDataSetShouldAllowTouch:(UIScrollView *)scrollView{
    
    return YES;
}

//是否允许滚动 (默认是 NO) :

- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView{
    return NO;
}

//空白区域点击响应:
- (void)emptyDataSetDidTapView:(UIScrollView *)scrollView{ // Do something
    
}

//点击图片
- (void)emptyDataSet:(UIScrollView *)scrollView didTapView:(UIView *)view
{
}
- (CGFloat)verticalOffsetForEmptyDataSet:(UIScrollView *)scrollView
{
    return 10.f;
}

/* Finally, you can separate components from each other (default separation is 11 pts): */
- (CGFloat)spaceHeightForEmptyDataSet:(UIScrollView *)scrollView
{
    if (_NoMoreDataType == NoMoreDataTypeNoShopCar) {
        return 20;
    }
    return 0.1f;
}
// 点击button 响应

//刷新当前表格
- (void)emptyDataSetDidTapButton:(UIScrollView *)scrollView{ // Do something
    
    if (_NoMoreDataType == NoMoreDataTypeNoShopCar) {
        self.tabBarController.selectedIndex = 1;
    }else{
//        if (scrollView == _aCollectionView) {
//            [_aCollectionView reloadData];
//        }else{
//            [_aTableView reloadData];
//        }
    }
}
@end
