//
//  TvShowRepository.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import "TvShowRepository.h"

@implementation TvShowRepository

- (instancetype)init {
    self = [super init];
    
    self.client = [[URLSessionHTTP alloc] init];
    
    return self;
}

- (void)fetchPopularMoviesWithCompletion:(void (^__strong)(NSArray<Movie *> *__strong, NSError *__strong))completion {
    [self.client fetchDataForTvShowPath:@"/popular" completionHandler:^(id result, NSError *error) {
        if (error != NULL) {
            NSLog(@"%@", error);
            return;
        } else {
            
            NSError *jsonError = nil;
            NSDictionary *responseJSON = [NSJSONSerialization JSONObjectWithData:result options:0 error:&jsonError];
            NSMutableArray<Movie *> *movies = NSMutableArray.new;
            
            if (jsonError) {
                return;
            }
            for (NSDictionary *movieDict in responseJSON[@"results"]) {
                Movie *newMovie = [[Movie alloc] initWithDictionary:movieDict];
                [movies addObject:newMovie];
            }
            completion(movies, nil);
        }
    }];
}

@end
