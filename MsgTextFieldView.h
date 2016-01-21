









#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, MsgTopViewIsHide) {
    
    MsgTopViewIsHideHide = 0, // 隐藏上边线
    MsgTopViewIsHideShow = 1 // 显示上边线
    
};

typedef NS_ENUM(NSInteger, MsgBottomViewIsHide) {
    MsgBottomViewIsHideShow = -1,
    MsgBottomViewIsHideHide = 0
    
};




@interface MsgTextFieldView : UIView

@property (nonatomic, strong) UILabel * label; // 控件的label
@property (nonatomic, strong) UITextField  * textfield; // 控件的输入框
@property (nonatomic, strong) UIColor * lineColor; // 上线边线的颜色

@property (nonatomic, assign) UITextFieldViewMode textfieldMode; // textfield的消除图标
@property (nonatomic, assign) BOOL clearsOnBeginEditing; // 点击文本框是否删除上次输入内容


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



@end
