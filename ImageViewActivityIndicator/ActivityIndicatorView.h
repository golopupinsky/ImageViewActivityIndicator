//
//  ActivityIndicatorView.h
//  ImageViewActivityIndicator
//
//  Created by Sergey Yuzepovich on 30.12.14.
//  Copyright (c) 2014 Sergey Yuzepovich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityIndicatorView : UIImageView

-(instancetype)initWithImages:(NSArray*)images duration:(NSTimeInterval)duration;

@end
