LKAYoutubeLikeLoadingIndicatorView ![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)
========================
Loading Indicator Inspired by YouTube App
模仿实现 YouTube iOS 端 APP 的加载内容指示器


## 动画效果
![Screenshot](http://www.find-lab.cn/github/LKAYoutubeLikeLoadingIndicatorView.gif "Example of LKAYoutubeLikeLoadingIndicatorView")

##  安装

复制 LKAYoutubeLikeLoadingIndicatorView.h / LKAYoutubeLikeLoadingIndicatorView.m 到你的工程
导入头文件
```
#import "LKAYoutubeLikeLoadingIndicatorView.h"
```


## 如何使用 LKAYoutubeLikeLoadingIndicatorView

手动创建与添加 `LKAYoutubeLikeLoadingIndicatorView` 类或者通过 Storyboard 设置 UIView 的 custom class 为 `LKAYoutubeLikeLoadingIndicatorView`

设置指示器的 Line Width, 默认值为 5
```
self.loadingIndicatorView.lineWidth = 10;

```

设置指示器的变化颜色数组,当数组只含有一个 UIColor 时,指示器颜色不变,默认是一个包括四种颜色的数组,颜色取值来自 YouTube App.

```
self.loadingIndicatorView.spinnerColors = @[
                            [UIColor colorWithRed:0.26 green:0.52 blue:0.96 alpha:1.00],
                            [UIColor colorWithRed:0.85 green:0.23 blue:0.17 alpha:1.00],
                            [UIColor colorWithRed:0.96 green:0.71 blue:0.00 alpha:1.00],
                            [UIColor colorWithRed:0.07 green:0.62 blue:0.35 alpha:1.00]
                       ];

```

设置指示器停止动画时,是否隐藏自身.类似与`UIKit`中的 `UIActivityIndicatorView`的`hidesWhenStopped`属性,默认为 NO,即暂停动画后不隐藏指示器.

```
self.loadingIndicatorView.hidesWhenStopped = YES;

```

使用 `startAnimating` 方法`开启`或`恢复` Loading 动画.

```
[self.loadingIndicatorView startAnimating];

```

调用 `stopAnimating` 方法`关闭` Loading 动画.

```
[self.loadingIndicatorView stopAnimating];

```

## Credits

Inspired by [YouTube](https://www.youtube.com).

## License

MIT license.
