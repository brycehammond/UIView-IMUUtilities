//
//  UIView+IMUToImage.m
//  Imulus
//
//  Created by Bryce Hammond on 6/4/13.
//  Copyright (c) 2013 Imulus, LLC. All rights reserved.
//

#import "UIView+IMUToImage.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (IMUToImage)

- (UIImage *)image
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0.0);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
