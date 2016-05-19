//
//  ViewController.m
//  pop_test
//
//  Created by tuhui－03 on 16/5/18.
//  Copyright © 2016年 tuhui－03. All rights reserved.
//

#import "ViewController.h"
#import "WBPopOverView.h"
#define Swith self.view.frame.size.width
#define Sheight self.view.frame.size.height

@interface ViewController ()<UIPopoverPresentationControllerDelegate>
@property(strong,readwrite,nonatomic)UIButton *button;
@property(strong,readwrite,nonatomic)NSMutableArray *testArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _button=[[UIButton alloc]initWithFrame:CGRectMake(Swith/2-50, 100, 100, 30)];
    [_button setTitle:@"测试" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    _button.backgroundColor=[UIColor lightGrayColor];
    [self.view addSubview:_button];
    
    NSMutableArray *arr=[[NSMutableArray alloc]initWithObjects:@"1",@"2", nil];
    _testArr=arr;
    
}

-(void)btnclick
{
    CGPoint point=CGPointMake(_button.frame.origin.x+_button.frame.size.width/2, _button.frame.origin.y+_button.frame.size.height);//箭头点的位置
    WBPopOverView *view=[[WBPopOverView alloc]initWithOrigin:point Width:200 Height:300 Direction:WBArrowDirectionUp2];//初始化弹出视图的箭头顶点位置point，展示视图的宽度Width，高度Height，Direction以及展示的方向
    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 30)];
    lable.text=@"测试内容";
    lable.textColor=[UIColor whiteColor];
    [view.backView addSubview:lable];
    [view popView];
   
}

@end
