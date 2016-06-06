//
//  UserController.m
//  Routable
//
//  Created by yehot on 16/5/28.
//  Copyright © 2016年 TurboProp Inc. All rights reserved.
//

#import "UserController.h"
#import "Routable.h"

@implementation UserController

- (id)initWithRouterParams:(NSDictionary *)params {
    if ((self = [self initWithNibName:nil bundle:nil])) {
        //  initWithRouterParams ，通过 params 将 url的参数解析出来
        self.title = @"User";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *modal = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [modal setTitle:@"Modal" forState:UIControlStateNormal];
    [modal addTarget:self action:@selector(tapped:) forControlEvents:UIControlEventTouchUpInside];
    [modal sizeToFit];
    [modal setFrame:CGRectMake(0, self.view.bounds.size.height - modal.frame.size.height, modal.frame.size.width, modal.frame.size.height)];
    
    [self.view addSubview:modal];
}

- (void)tapped:(id)sender {
    
    // 如果只是简单的open @"modal"  就是 打开；
    // 加的参数
    [[Routable sharedRouter] open:@"modal/导航栏"];
}

@end
