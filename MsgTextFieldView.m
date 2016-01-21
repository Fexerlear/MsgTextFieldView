//
//  MsgTextFieldView.m
//  MuZhiFinance
//
//  Created by 上官东旭 on 16/1/20.
//  Copyright © 2016年 上海指融互联网金融信息服务有限公司. All rights reserved.
//

#import "MsgTextFieldView.h"

@implementation MsgTextFieldView


- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIView * backgroundView = [[UIView alloc]init];
    backgroundView.backgroundColor = APP_Line_COLOR;
    [self addSubview:backgroundView];
    [backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_bottom).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);

    }];
    
    UIView * leftView = [[UIView alloc]init];
    leftView.backgroundColor = [UIColor whiteColor];
    [backgroundView addSubview:leftView];
    [leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(backgroundView.mas_top).offset(1);
        make.left.equalTo(backgroundView.mas_left).offset(0);
        make.bottom.equalTo(backgroundView.mas_bottom).offset(-1);
        make.width.equalTo(@20);
    }];
    
    UILabel * accountLabel = [self setupLabelWithTitle:@"账号"];
    [backgroundView addSubview:accountLabel];
    [accountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(backgroundView.mas_top).offset(1);
        make.left.equalTo(leftView.mas_right).offset(0);
        make.width.equalTo(@50);
        make.height.equalTo(self.mas_height);
    }];
    
    
    
    UITextField * accountTextField = [self setupTextFieldWithPlaceholder:@"请输入您注册的手机号"];
    [backgroundView addSubview:accountTextField];
    [accountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(backgroundView.mas_top).offset(1);
        make.left.equalTo(accountLabel.mas_right).offset(0);
        make.right.equalTo(backgroundView.mas_right).offset(0);
        make.height.equalTo(self.mas_height);
    }];

    accountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    

    
    
    
}


#pragma mark - 创建label
- (UILabel *)setupLabelWithTitle:(NSString *)title
{
    UILabel * label = [[UILabel alloc]init];
    label.backgroundColor = [UIColor whiteColor];
    label.text = title;
    label.textAlignment = NSTextAlignmentLeft;
    label.textColor = Main_Text_Color;
    label.font = [UIFont systemFontOfSize:14];
    return label;
}

#pragma mark - 创建UITextField
- (UITextField *)setupTextFieldWithPlaceholder:(NSString *)placeholder
{
    UITextField * textField = [[UITextField alloc]init];
    textField.backgroundColor = [UIColor whiteColor];
    textField.placeholder = placeholder;
    textField.font = [UIFont systemFontOfSize:12];
    return textField;
}




































@end
