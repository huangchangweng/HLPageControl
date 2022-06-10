# HLPageControl
iOS自定义PageControl，支持长条形Page，适配iOS14，支持在xib、storyboard中自定义属性

##### 支持使用CocoaPods引入, Podfile文件中添加:

``` objc
pod 'HLPageControl', '1.0.0'
```

##### 简介

✅ 支持在xib、storyboard中自定义属性

✅ 适配iOS14
# Demonstration
![image](https://github.com/huangchangweng/HLPageControl/blob/main/QQ20220610-104536-HD.gif)

基本使用方法:<p>

``` objc
/// page间隙，默认6
@property (nonatomic) IBInspectable CGFloat dotSpacing;
/// page大小，默认6
@property (nonatomic) IBInspectable CGFloat dotSize;
/// 选中page宽度，默认12
@property (nonatomic) IBInspectable CGFloat selectedDotWidth;
```

# Requirements

iOS 9.0 +, Xcode 7.0 +

# Version

* 1.0.0 :

  完成HLPageControl基础搭建

# License

HLPageControl is available under the MIT license. See the LICENSE file for more info.
