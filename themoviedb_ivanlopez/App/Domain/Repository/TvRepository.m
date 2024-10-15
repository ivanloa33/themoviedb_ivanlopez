//
//  TvRepository.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import "TvRepository.h"

@implementation TvRepository

- (instancetype)init {
    self = [super init];
    self.client = [[URLSessionHTTP alloc] init];
    self.tvShows = [[NSCache alloc] init];
    return self;
}

- (void)fetchTvShowsWithPath:(NSString*)path completion:(void (^__strong)(NSArray<TvShow *> *__strong, NSError *__strong))completion {
    NSArray<TvShow *> *cachedTvShows = [self.tvShows objectForKey:path];
    if (cachedTvShows) {
        completion(cachedTvShows, nil);
        return;
    }
    
    [self.client fetchDataWith:path completionHandler:^(id result, NSError *error) {
        if (error != NULL) {
            NSLog(@"%@", error);
            return;
        } else {
            
            NSError *jsonError = nil;
            NSDictionary *responseJSON = [NSJSONSerialization JSONObjectWithData:result options:0 error:&jsonError];
            NSMutableArray<TvShow *> *tvShows = NSMutableArray.new;
            
            if (jsonError) {
                return;
            }
            for (NSDictionary *tvShowDict in responseJSON[@"results"]) {
                TvShow *tvShow = [[TvShow alloc] initWithDictionary:tvShowDict];
                [tvShows addObject:tvShow];
            }
            [self.tvShows setObject:tvShows forKey:path];
            completion(tvShows, nil);
        }
    }];
}

@end
