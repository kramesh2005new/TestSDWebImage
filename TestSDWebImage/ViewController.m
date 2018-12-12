//
//  ViewController.m
//  TestSDWebImage
//
//  Created by Ramesh K on 12/12/18.
//  Copyright © 2018 Ramesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self loadImage];
}


-(void) loadImage {
    
    NSURL *imgUrl = [NSURL URLWithString: @"http://apps.careon.io/api/downloadfile/QlN"]; //@"https://www.dike.lib.ia.us/images/sample-1.jpg"];
    
    [self.img sd_setIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [self.img sd_setShowActivityIndicatorView:YES];
    //                [cell.img sd_setImageWithURL:imgUrl];
    [self.img sd_setImageWithURL:imgUrl completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        
        [self.img setImage: image];
    }];
}

@end
