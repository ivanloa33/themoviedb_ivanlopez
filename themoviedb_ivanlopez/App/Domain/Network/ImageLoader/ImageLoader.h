//
//  ImageLoader.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 15/10/24.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageLoader : NSObject

+ (instancetype)shared;

@property (nonatomic, strong) NSCache<NSURL *, UIImage *> *loadedImages;

- (void)loadImage:(NSString *)urlString completion:(void (^)(UIImage *image, NSError *error)) completion;
                                                    

@end
