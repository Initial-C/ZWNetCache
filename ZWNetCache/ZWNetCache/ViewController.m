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
    self.view.backgroundColor = [UIColor whiteColor];
    
    
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
