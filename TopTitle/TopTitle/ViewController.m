//
//  ViewController.m
//  TopTitle
//
//  Created by aspilin on 2017/4/11.
//  Copyright © 2017年 aspilin. All rights reserved.
//

#import "ViewController.h"
#import "JohnTopTitleView.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"

@interface ViewController ()

@property (nonatomic,strong) JohnTopTitleView *titleView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithRed:245/255 green:245/255 blue:245/255 alpha:1.f];
    [self createUI];
    
}

- (void)createUI{
    NSArray *titleArray = [NSArray arrayWithObjects:@"微信",@"通讯录",@"发现",@"我", nil];
    self.titleView.title = titleArray;
    [self.titleView setupViewControllerWithFatherVC:self childVC:[self setChildVC]];
   [self.view addSubview:self.titleView];
}

- (NSArray <UIViewController *>*)setChildVC{
    ViewController1 * vc1 = [[ViewController1 alloc]init];
    ViewController2 *vc2 = [[ViewController2 alloc]init];
    ViewController3 *vc3 = [[ViewController3 alloc]init];
    ViewController4 *vc4 = [[ViewController4 alloc]init];
    NSArray *childVC = [NSArray arrayWithObjects:vc1,vc2,vc3,vc4, nil];
    return childVC;
}

#pragma mark - getter
- (JohnTopTitleView *)titleView{
    if (!_titleView) {
        _titleView = [[JohnTopTitleView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
    }
    return _titleView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
