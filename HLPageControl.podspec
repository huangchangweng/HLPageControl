Pod::Spec.new do |spec|

  spec.name         = "HLPageControl"
  spec.version      = "1.0.0"
  spec.summary      = "iOS自定义PageControl"

  # 描述
  spec.description  = <<-DESC
      iOS自定义PageControl，支持长条形Page，适配iOS14，支持在xib、storyboard中自定义属性
  DESC

  # 项目主页
  spec.homepage     = "https://github.com/huangchangweng/HLPageControl"
 
  # 开源协议
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  
  # 作者
  spec.author       = { "黄常翁" => "599139419@qq.com" }
  
  # 支持平台
  spec.platform     = :ios, "9.0"

  # git仓库，tag
  spec.source       = { :git => "https://github.com/huangchangweng/HLPageControl.git", :tag => spec.version.to_s }

  # 资源路径
  spec.source_files  = "HLPageControl/HLPageControl/*.{h,m}"

  # 依赖系统库
  spec.frameworks = "UIKit"

end
