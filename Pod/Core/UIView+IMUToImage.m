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
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0.0f);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    UIImage * snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snapshotImage;
}

@end
