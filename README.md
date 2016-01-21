# MsgTextFieldView
/**
*  便利构造器创建控件
*
*  @param frame           控件的位置
*  @param labelFont       控件中label的字体
*  @param labeltextColor  控件中label的文字颜色
*  @param textFont        控件中textfield的字体
*  @param title           控件中label的标题
*  @param textplaceholder 控件中textfield的placeholder的文字
*  @param secureTextEntry 是否明文显示textfield的文字
*  @param topHide         用来实现控件中 上边线 左部是否隐藏
*  @param bottomHide      用来实现控件中 下边线 左部是否隐藏
*
*  @return 返回需要的控件
*/
+ (instancetype)msgTextFieldViewWithFrame:(CGRect)frame labelFont:(CGFloat)labelFont labeltextColor:(UIColor *)labeltextColor textFont:(CGFloat)textFont labelTitle:(NSString *)title textplaceholder:(NSString *)textplaceholder textsecureTextEntry:(BOOL)secureTextEntry viewTopHide:(MsgTopViewIsHide)topHide viewBottomHide:(MsgBottomViewIsHide)bottomHide;
