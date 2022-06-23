//
//  HLPageControl.h
//  HLPageControl
//
//  Created by JJB_iOS on 2022/6/9.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface HLPageControl : UIPageControl
/// page间隙，默认6
@property (nonatomic) IBInspectable CGFloat dotSpacing UI_APPEARANCE_SELECTOR;
/// page大小，默认6
@property (nonatomic) IBInspectable CGFloat dotSize UI_APPEARANCE_SELECTOR;
/// 选中page宽度，默认12
@property (nonatomic) IBInspectable CGFloat selectedDotWidth UI_APPEARANCE_SELECTOR;
@end

