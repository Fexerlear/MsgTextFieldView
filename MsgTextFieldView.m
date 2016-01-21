









#import "MsgTextFieldView.h"


@interface MsgTextFieldView ()

@property (nonatomic, strong) UIView * backgroundView;



@end


@implementation MsgTextFieldView


//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//
//
//
//}



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame labelFont:(CGFloat)labelFont labeltextColor:(UIColor *)labeltextColor textFont:(CGFloat)textFont labelTitle:(NSString *)title textplaceholder:(NSString *)textplaceholder textsecureTextEntry:(BOOL)secureTextEntry viewTopHide:(MsgTopViewIsHide)topHide viewBottomHide:(MsgBottomViewIsHide)bottomHide {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self loadselfViewWithFrame:frame labelFont:labelFont labeltextColor:(UIColor *)labeltextColor textFont:textFont labelTitle:title textplaceholder:textplaceholder textsecureTextEntry:secureTextEntry viewTopHide:topHide viewBottomHide:bottomHide];
        
    }
    return self;
    
}

- (void)loadselfViewWithFrame:(CGRect)frame labelFont:(CGFloat)labelFont labeltextColor:(UIColor *)labeltextColor textFont:(CGFloat)textFont labelTitle:(NSString *)title textplaceholder:(NSString *)textplaceholder textsecureTextEntry:(BOOL)secureTextEntry viewTopHide:(MsgTopViewIsHide)topHide viewBottomHide:(MsgBottomViewIsHide)bottomHide {
    
    
    
    // 预处理
    if (!labelFont) {
        labelFont = 17.0f;
    }
    
    if (!textFont) {
        textFont = labelFont;
    }
    
    if (!labeltextColor) {
        labeltextColor = [UIColor redColor];
    }
    
    if (!topHide) {
        topHide = MsgTopViewIsHideShow;
    }
    
    if (!bottomHide) {
        bottomHide = MsgBottomViewIsHideShow;
    }
    
    _backgroundView = [[UIView alloc]init];
    _backgroundView.backgroundColor = APP_Line_COLOR_d8;
    [self addSubview:_backgroundView];
    [_backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        
    }];
    
    UIView * leftView = [[UIView alloc]init];
    leftView.backgroundColor = [UIColor whiteColor];
    [_backgroundView addSubview:leftView];
    [leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_backgroundView.mas_top).offset(topHide);
        make.left.equalTo(_backgroundView.mas_left).offset(0);
        make.bottom.equalTo(_backgroundView.mas_bottom).offset(bottomHide);
        make.width.equalTo(@20);
    }];
    
    _label = [self setupLabelWithTitle:title];
    _label.font = [UIFont systemFontOfSize:labelFont];
    _label.textColor = labeltextColor;
    
    [_backgroundView addSubview:_label];
    [_label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_backgroundView.mas_top).offset(1);
        make.left.equalTo(leftView.mas_right).offset(0);
        make.width.equalTo(@90);
        make.height.equalTo(self.mas_height).offset(-2);
    }];
    
    
    _textfield = [self setupTextFieldWithPlaceholder:textplaceholder];
    _textfield.secureTextEntry = secureTextEntry;
    _textfield.font = [UIFont systemFontOfSize:textFont];
    
    [_backgroundView addSubview:_textfield];
    [_textfield mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_backgroundView.mas_top).offset(1);
        make.left.equalTo(_label.mas_right).offset(0);
        make.right.equalTo(_backgroundView.mas_right).offset(0);
        make.height.equalTo(self.mas_height).offset(-2);
    }];
    
    _textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
}

#pragma mark - 创建label
- (UILabel *)setupLabelWithTitle:(NSString *)title
{
    UILabel * label = [[UILabel alloc]init];
    label.backgroundColor = [UIColor whiteColor];
    label.text = title;
    label.textAlignment = NSTextAlignmentLeft;
    return label;
}

#pragma mark - 创建UITextField
- (UITextField *)setupTextFieldWithPlaceholder:(NSString *)placeholder
{
    UITextField * textField = [[UITextField alloc]init];
    textField.backgroundColor = [UIColor whiteColor];
    textField.placeholder = placeholder;
    return textField;
}


- (void)setLineColor:(UIColor *)lineColor {
    
    _backgroundView.backgroundColor = lineColor;
}

- (void)setTextfieldMode:(UITextFieldViewMode)textfieldMode {
    
    _textfield.clearButtonMode = textfieldMode;
}

- (void)setClearsOnBeginEditing:(BOOL)clearsOnBeginEditing {
    _textfield.clearsOnBeginEditing = clearsOnBeginEditing;
}

+ (instancetype)msgTextFieldViewWithFrame:(CGRect)frame labelFont:(CGFloat)labelFont labeltextColor:(UIColor *)labeltextColor textFont:(CGFloat)textFont labelTitle:(NSString *)title textplaceholder:(NSString *)textplaceholder textsecureTextEntry:(BOOL)secureTextEntry viewTopHide:(MsgTopViewIsHide)topHide viewBottomHide:(MsgBottomViewIsHide)bottomHide {
    
    return  [[[self class] alloc] initWithFrame:frame labelFont:labelFont labeltextColor:(UIColor *)labeltextColor textFont:textFont labelTitle:title textplaceholder:textplaceholder textsecureTextEntry:secureTextEntry viewTopHide:topHide viewBottomHide:bottomHide];
    
}



@end
