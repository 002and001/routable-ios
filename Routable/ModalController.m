//
//  ModalController.m
//  Routable
//
//  Created by yehot on 16/5/28.
//  Copyright © 2016年 TurboProp Inc. All rights reserved.
//

#import "ModalController.h"
#import "Routable.h"

@implementation ModalController

- (id)initWithRouterParams:(NSDictionary *)params {
    if ((self = [self initWithNibName:nil bundle:nil])) {
        
        self.title = params[@"title"];
//        self.title = @"Modal";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *modal = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [modal setTitle:@"Close" forState:UIControlStateNormal];
    [modal addTarget:self action:@selector(tapped:) forControlEvents:UIControlEventTouchUpInside];
    [modal sizeToFit];
    [modal setFrame:CGRectMake(0, self.view.bounds.size.height - modal.frame.size.height, modal.frame.size.width, modal.frame.size.height)];
    [self.view addSubview:modal];
    
    UIButton *user = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [user setTitle:@"User" forState:UIControlStateNormal];
    [user addTarget:self action:@selector(tappedUser:) forControlEvents:UIControlEventTouchUpInside];
    [user sizeToFit];
    [user setFrame:CGRectMake(self.view.bounds.size.width - user.frame.size.width , self.view.bounds.size.height - user.frame.size.height, user.frame.size.width, user.frame.size.height)];
    
    [self.view addSubview:user];
}

- (void)tapped:(id)sender {
    [[Routable sharedRouter] pop];
}

- (void)tappedUser:(id)sender {
    [[Routable sharedRouter] open:@"user"];
}

@end
