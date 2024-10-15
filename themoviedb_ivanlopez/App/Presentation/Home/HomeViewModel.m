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
    
    self.movieRepository = [[MovieRepository alloc] init];
    self.tvShowRepository = [[TvRepository alloc] init];
    
    return self;
}

- (void) fetchMoviesWithPath: (NSString*)path {
    [self.movieRepository fetchMoviesWithPath:path completion:^(NSArray<Movie *> *movies, NSError *error) {
        if (error != nil) {
            NSLog(@"error");
            return;
        }
        self.movies = movies;
        [self.delegate reloadData];
    }];
}

- (void) fetchTvShowsWithPath: (NSString*)path {
    [self.tvShowRepository fetchTvShowsWithPath:path completion:^(NSArray<TvShow *> *tvShows, NSError *error) {
        if (error != nil) {
            NSLog(@"error");
            return;
        }
        self.tvShows = tvShows;
        [self.delegate reloadData];
    }];
}

- (void)fetchPopularMovies {
    [self fetchMoviesWithPath:@"/movie/popular"];
}

- (void)fetchTopRatedMovies {
    [self fetchMoviesWithPath:@"/movie/top_rated"];
}

- (void)fetchAiringTodayMovies {
    [self fetchTvShowsWithPath:@"/tv/airing_today"];
}

- (void)fetchOnTVMovies {
    [self fetchTvShowsWithPath:@"/tv/on_the_air"];
}

@end
