//
//  UIImageView.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 15/10/24.
//

#import "UIImageView.h"

@implementation UIImageView (ImageLoaderExtension)

- (void)loadImagefromString:(NSString *)urlString {
    [ImageLoader.shared loadImage:urlString completion:^(UIImage *image, NSError *error) {
        if (image != nil) {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.image = image;
            });
        } else {
            NSLog(@"Error: %@", error);
        }
    }];
}

@end
