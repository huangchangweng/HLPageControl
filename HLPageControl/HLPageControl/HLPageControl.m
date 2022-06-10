//
//  HLPageControl.m
//  HLPageControl
//
//  Created by JJB_iOS on 2022/6/9.
//

#import "HLPageControl.h"

@implementation HLPageControl

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self build];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        [self build];
    }
    return self;
}

- (void)setNumberOfPages:(NSInteger)numberOfPages {
    [super setNumberOfPages:numberOfPages];
    [self setupStyle];
}

- (void)setCurrentPage:(NSInteger)currentPage {
    [super setCurrentPage:currentPage];
    [UIView animateWithDuration:0.25f animations:^{
        [self setupStyle];
    }];
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self setupStyle];
}

#if TARGET_INTERFACE_BUILDER
- (void)prepareForInterfaceBuilder
{
    [self setupStyle];
}
#endif

#pragma mark - Private Method

- (void)build
{
    _dotSpacing = 6;
    _dotSize = 6;
    _selectedDotWidth = 12;
    
    if (@available(iOS 14.0, *)) {
        self.backgroundStyle = UIPageControlBackgroundStyleMinimal;
        self.allowsContinuousInteraction = NO;
    }
    
    [self setupStyle];
}

- (void)setupStyle
{
    NSArray<UIView*> *subViews = self.subviews;
    CGFloat mainWidth = self.frame.size.width;
    CGFloat mainHeight = self.frame.size.height;
    if (@available(iOS 14.0, *)) {
        subViews = self.subviews.firstObject.subviews.firstObject.subviews;
        mainWidth = self.subviews.firstObject.subviews.firstObject.frame.size.width;
        mainHeight = self.subviews.firstObject.subviews.firstObject.frame.size.height;
    }
    NSInteger i = 0;
    CGFloat width = self.dotSize * (CGFloat)(subViews.count) + self.dotSpacing * (CGFloat)(subViews.count - 1);
    CGFloat x = mainWidth / 2 - (width / 2);
    CGFloat y = mainHeight / 2 - self.dotSize / 2;
    for (UIView *view in subViews) {
        CGRect frame = view.frame;
        frame.origin.x = x;
        frame.origin.y = y;
        if (self.currentPage == i) {
            frame.size = CGSizeMake(self.selectedDotWidth, self.dotSize);
            x += self.selectedDotWidth + self.dotSpacing;
        } else {
            frame.size = CGSizeMake(self.dotSize, self.dotSize);
            x += self.dotSize + self.dotSpacing;
        }
        if (@available(iOS 14.0, *)) {
            if ([view isKindOfClass:UIImageView.class]) {
                ((UIImageView*)view).image = nil;
            }
            if (self.currentPage == i) {
                view.backgroundColor = self.currentPageIndicatorTintColor;
            } else {
                view.backgroundColor = self.pageIndicatorTintColor;
            }
        }
        view.layer.cornerRadius = self.dotSize / 2;
        view.frame = frame;
        i += 1;
    }
}

#pragma mark - Setter

- (void)setDotSpacing:(CGFloat)dotSpacing {
    if (_dotSpacing != dotSpacing) {
        _dotSpacing = dotSpacing;
        [self setupStyle];
    }
}

- (void)setDotSize:(CGFloat)dotSize {
    if (_dotSize != dotSize) {
        _dotSize = dotSize;
        [self setupStyle];
    }
}

- (void)setSelectedDotWidth:(CGFloat)selectedDotWidth {
    if (_selectedDotWidth != selectedDotWidth) {
        _selectedDotWidth = selectedDotWidth;
        [self setupStyle];
    }
}

@end
