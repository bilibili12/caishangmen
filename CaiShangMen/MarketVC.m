//
//  MarketVC.m
//  CaiShangMen
//
//  Created by 张宇航 on 15/7/15.
//  Copyright (c) 2015年 herryhan. All rights reserved.
//

#import "MarketVC.h"

@interface MarketVC ()

@end

@implementation MarketVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=@"菜篮子";
    [self createscrollview];
    [self config];
    
}
-(void)createscrollview
{
    UIScrollView *sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 64,self.view.bounds.size.width , 120)];
    sv.contentSize=CGSizeMake((self.view.bounds.size.width)*3, 120);
    sv.pagingEnabled=YES;
    sv.backgroundColor=[UIColor yellowColor];
    sv.alwaysBounceHorizontal=YES;
    
    //
    sv.contentOffset=CGPointMake(self.view.bounds.size.width, 0);
    [self.view addSubview:sv];
//    for (int i=0; i<3; i++) {
//        UIImageView *imageView=[[UIImageView alloc]init];
//       // imageView.frame=CGRectMake(i*, 0, 250, 220);
//        imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"",i+1]];
//        [sv addSubview:imageView];
 //   }
  
}
-(void)config
{
    UIButton *btn1=[[UIButton alloc]initWithFrame:CGRectMake(0, 184,(self.view.bounds.size.width) /4, 80)];
    [btn1 setImage:[UIImage imageNamed:@"host@3x"]  forState:UIControlStateNormal];
       [self.view addSubview:btn1];
    UIButton *btn2=[[UIButton alloc]initWithFrame:CGRectMake((self.view.bounds.size.width) /4, 184,(self.view.bounds.size.width) /4, 80)];
    [btn2 setImage:[UIImage imageNamed:@"vegetables@3x"]  forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    UIButton *btn3=[[UIButton alloc]initWithFrame:CGRectMake((self.view.bounds.size.width) /2, 184,(self.view.bounds.size.width) /4, 80)];
    [btn3 setImage:[UIImage imageNamed:@"meet@3x"]  forState:UIControlStateNormal];
    [self.view addSubview:btn3];
    UIButton *btn4=[[UIButton alloc]initWithFrame:CGRectMake(((self.view.bounds.size.width) /4)*3
                    , 184,(self.view.bounds.size.width) /4, 80)];
    [btn4 setImage:[UIImage imageNamed:@"oil@3x"]  forState:UIControlStateNormal];
    [self.view addSubview:btn4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
