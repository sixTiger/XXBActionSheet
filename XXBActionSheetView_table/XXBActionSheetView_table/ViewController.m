//
//  ViewController.m
//  XXBActionSheetView_table
//
//  Created by 杨小兵 on 15/8/16.
//  Copyright (c) 2015年 杨小兵. All rights reserved.
//

#import "ViewController.h"
#import "XXBActionSheet.h"

@interface ViewController ()<XXBActionSheetDelegate>

@end

@implementation ViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    // 1.创建XXBActionSheet对象, 可以随意设置标题个数，第一个为取消按钮的标题，需要设置代理才能监听点击结果
    XXBActionSheet *sheet = [[XXBActionSheet alloc] initWithTitle:@"title" delegate:self cancelButtonTitle:@"cancale" otherButtonTitles:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",nil];
    // 2.显示出来
    [sheet showInView:self.view];
}

// 3.实现代理方法，需要遵守HJCActionSheetDelegate代理协议
- (void)actionSheet:(XXBActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%@",@(buttonIndex));
}
@end
