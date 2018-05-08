//
//  ZXCardScrollView.h
//  ZXCardScrollView
//
//  Created by SWT on 2018/5/8.
//  Copyright © 2018年 SWT. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZXCardScrollView;
@protocol ZXCardScrollViewDelegate <NSObject>
/** 点击图片回调 */
- (void)cardScrollView:(ZXCardScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index;
@end

@interface ZXCardScrollView : UIView
/** 是否无限循环，默认yes */
@property (nonatomic,assign) BOOL infiniteLoop;
/** 是否自动滑动，默认yes */
@property (nonatomic,assign) BOOL autoScroll;
/** 是否缩放，默认不缩放 */
@property (nonatomic,assign) BOOL isZoom;
/** 自动滚动间隔时间，默认2s */
@property (nonatomic,assign) CGFloat autoScrollTimeInterval;
/** cell宽度 */
@property (nonatomic,assign) CGFloat itemWidth;
/** cell间距 */
@property (nonatomic,assign) CGFloat itemSpace;
/** imagView圆角，默认为0 */
@property (nonatomic,assign) CGFloat imgCornerRadius;
/** 分页控制器 */
@property (nonatomic,strong) UIPageControl *pageControl;
/** 占位图，用于网络未加载到图片时 */
@property (nonatomic, strong) UIImage *placeholderImage;

@property (nonatomic,weak) id<ZXCardScrollViewDelegate> delegate;

//初始化方法
+(instancetype)cardScrollViewWithFrame:(CGRect)frame shouldInfiniteLoop:(BOOL)infiniteLoop imageGroups:(NSArray<NSString *> *)imageGroups;

@end
