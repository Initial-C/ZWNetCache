//
//  ViewController.m
//  ZWNetCache
//
//  Created by William Chang on 16/12/6.
//  Copyright © 2016年 Initial-C. All rights reserved.
//

#import "ViewController.h"
#import <MyRequest.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIColor *spotColor = [UIColor colorWithRed:205/255.0 green:102/255.0 blue:0/255.0 alpha:1.0];
    UIColor *backgroundColor = [UIColor colorWithRed:47/255.0 green:46/255.0 blue:51/255.0 alpha:1.0];
    
    PreLoader *preLoader = [[PreLoader alloc] initWithFrame:CGRectMake(60, 300, 250, 250)
                                                      color:spotColor
                                            backgroundColor:[UIColor clearColor]];
    
    [self.view setBackgroundColor:backgroundColor];
    [self.view addSubview:preLoader];

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [MyRequest GET:@"http://www.zimozibao.com:8080/zimoAppWS/cxf/rest/kcleixing/getKcleixing?_type=json&index=1&size=20" CacheTime:10 isLoadingView:@"正在加载" success:^(id responseObject, BOOL succe, NSDictionary *jsonDic) {
        
        NSLog(@"%@",jsonDic);
        
    } failure:^(NSError *error) {
        
    }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
