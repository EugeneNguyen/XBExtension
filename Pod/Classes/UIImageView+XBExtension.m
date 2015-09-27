//
//  UIImageView+XBExtension.m
//  Pods
//
//  Created by Binh Nguyen Xuan on 9/6/15.
//
//

#import "UIImageView+XBExtension.h"
#import "FontAwesomeKit.h"

@implementation UIImageView (XBExtension)
@dynamic imageName;
@dynamic faIconName;

- (void)setFaIconName:(NSString *)faIconName
{
    NSDictionary *allIcon = [FAKFontAwesome allIcons];
    NSString *code = [[allIcon allKeysForObject:faIconName] lastObject];
    if (code)
    {
        FAKFontAwesome *icon = [FAKFontAwesome iconWithCode:code size:24];
        [icon addAttribute:NSForegroundColorAttributeName value:self.tintColor];
        self.image = [icon imageWithSize:self.frame.size];
    }
}

- (NSString *)faIconName
{
    return nil;
}

- (void)setImageName:(NSString *)imageName
{
    [self setImage:[UIImage imageNamed:imageName]];
}

- (NSString *)imageName
{
    return nil;
}

@end
