//
//  MediatorFile.m
//  Routable
//
//  Created by yehao on 16/6/6.
//  Copyright © 2016年 TurboProp Inc. All rights reserved.
//

#import "MediatorFile.h"
#import "Routable.h"
#import "UserController.h"
#import "ModalController.h"

static NSString *const kUserViewControllerKey = @"user";

@implementation MediatorFile

+ (void)load {
    
    // 将 user 字符串注册为 UserController 的 map key
    [[Routable sharedRouter] map:kUserViewControllerKey toController:[UserController class]];
    
    // modal 是注册的类名         title 是参数名
    [[Routable sharedRouter] map:@"modal/:title" toController:[ModalController class] withOptions:[[UPRouterOptions modal] withPresentationStyle:UIModalPresentationFormSheet]];
}

+ (void)openUserViewController {
    [[Routable sharedRouter] open:kUserViewControllerKey];
}

@end
