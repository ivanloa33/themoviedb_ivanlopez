//
//  UIImageView.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 15/10/24.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ImageLoader.h"

@interface UIImageView (ImageLoaderExtension)

- (void)loadImagefromString:(NSString *) urlString;

@end
