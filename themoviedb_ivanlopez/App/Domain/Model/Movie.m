//
//  Movie.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 13/10/24.
//

#import "Movie.h"

@implementation Movie

- (instancetype)initWithDictionary: (NSDictionary *)movieDict {
    self = [super init];
    if (self) {
        self.title = movieDict[@"title"];
        self.overview = movieDict[@"overview"];
        self.voteAverage = movieDict[@"vote_average"];
        self.releaseDate = movieDict[@"release_date"];
    }
    return self;
}

@end
