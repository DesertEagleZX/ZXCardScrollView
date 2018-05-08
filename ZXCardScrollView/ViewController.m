//
//  ViewController.m
//  ZXCardScrollView
//
//  Created by SWT on 2018/5/8.
//  Copyright © 2018年 SWT. All rights reserved.
//

#import "ViewController.h"
#import "ZXCardScrollView.h"

@interface ViewController ()<ZXCardScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *imageArr = @[@"image1.png",
                          @"image2.png",
                          @"image3.png",
                          @"image4.png",
                          ];
    ZXCardScrollView *cardScrollView = [ZXCardScrollView cardScrollViewWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 135) shouldInfiniteLoop:NO imageGroups:imageArr];
    cardScrollView.autoScrollTimeInterval = 1;
    cardScrollView.autoScroll = NO;
    cardScrollView.isZoom = NO;
    cardScrollView.itemSpace = 25;
    cardScrollView.imgCornerRadius = 10;
    cardScrollView.itemWidth = self.view.frame.size.width - 100;
    cardScrollView.delegate = self;
    [self.view addSubview:cardScrollView];
    
}

#pragma mark - ZXCardScrollViewDelegate

- (void)cardScrollView:(ZXCardScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index{
    NSLog(@"index = %ld",index);
}




@end
