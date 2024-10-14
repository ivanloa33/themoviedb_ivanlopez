//
//  HomeViewModel.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import "HomeViewModel.h"

@implementation HomeViewModel

- (instancetype)init {
    self = [super init];
    
    self.repository = [[TvShowRepository alloc] init];
    
    return self;
}

- (void)getPopularMovies {
    [self.repository fetchPopularMoviesWithCompletion:^(NSArray<Movie *> *movies, NSError *error) {
        if (error != nil) {
            NSLog(@"error");
            return;
        }
        
        self.popularMovies = movies;
        if (self.dataUpdatedBlock) {
            self.dataUpdatedBlock(self.popularMovies);
        }
        
    }];
}

@end
