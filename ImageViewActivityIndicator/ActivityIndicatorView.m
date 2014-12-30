//
//  ActivityIndicatorView.m
//  ImageViewActivityIndicator
//
//  Created by Sergey Yuzepovich on 30.12.14.
//  Copyright (c) 2014 Sergey Yuzepovich. All rights reserved.
//

#import "ActivityIndicatorView.h"

@interface ActivityIndicatorView ()

@end

@implementation ActivityIndicatorView

-(instancetype)initWithImages:(NSArray*)images duration:(NSTimeInterval)duration
{
    self = [super init];
    
    if(self)
    {
        self.animationImages = images;
        self.animationDuration = duration;
    }
    
    return self;
}

@end
