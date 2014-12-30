//
//  ViewController.m
//  ImageViewActivityIndicator
//
//  Created by Sergey Yuzepovich on 30.12.14.
//  Copyright (c) 2014 Sergey Yuzepovich. All rights reserved.
//

#import "ViewController.h"
#import "ActivityIndicatorView.h"
#import "UIImage-Extensions.h"

@interface ViewController ()

@end

@implementation ViewController
{
    ActivityIndicatorView *activity;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    activity = [[ActivityIndicatorView alloc] initWithImages:[self generateImages] duration:2];
    
    CGRect rect;
    float w = 100,h=100;
    rect.size = CGSizeMake(w, h);
    rect.origin = CGPointMake(CGRectGetMidX([UIScreen mainScreen].bounds)-w/2, CGRectGetMidY([UIScreen mainScreen].bounds)-h/2);
    activity.frame = rect;
    
    [self.view addSubview:activity];
    [activity startAnimating];
}


-(NSArray*)generateImages
{
    UIImage *img = [UIImage imageNamed:@"aim_v4"];
    NSMutableArray *images = [[NSMutableArray alloc]init];
    
    for(float i=0;i<=2*M_PI;i+=2*M_PI/50)
    {
        [images addObject:[img imageRotatedByRadians:i]];
    }
    return images;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if([activity isAnimating])
    {
        [activity stopAnimating];
    }
    else
    {
        [activity startAnimating];
    }
}


@end
