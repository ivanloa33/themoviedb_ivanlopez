//
//  ImageLoader.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 15/10/24.
//

#import "ImageLoader.h"

@implementation ImageLoader

- (instancetype)init {
    self = [super init];
    if (self) {
        self.loadedImages = [[NSCache alloc] init];
    }
    return self;
}

+ (instancetype)shared {
    static ImageLoader *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

- (void)loadImage:(NSString *)urlString completion:(void (^__strong)(UIImage *__strong, NSError *__strong))completion {
    NSURL *url = [NSURL URLWithString:urlString];
    UIImage *cachedImage = [self.loadedImages objectForKey:url];
    if (cachedImage) {
        completion(cachedImage, nil);
        return;
    }
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSError *error = nil;
        NSData *data = [NSData dataWithContentsOfURL:url options:NSDataReadingMappedIfSafe
                                               error:&error];
        if (error) {
            completion(nil, error);
            
            return;
        }
        
        UIImage *image = [[UIImage alloc] initWithData:data];
        if (!image) {
            completion(nil, error);
            return;
        }
        
        [self.loadedImages setObject:image forKey:url];
        completion(image, error);
    });
}

@end
