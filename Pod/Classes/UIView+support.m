//
//  UIView+support.m
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/22/14.
//
//

#import "UIView+support.h"
#import "MBProgressHUD.h"

@implementation UIView (support)

- (void)showHUD:(NSString *)string
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hud.labelText = string;
}

- (void)hideHUD
{
    [MBProgressHUD hideAllHUDsForView:self animated:YES];
}

@end
