//
//  TvShow.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import "TvShow.h"

@implementation TvShow

@synthesize title;

- (instancetype)initWithDictionary: (NSDictionary *)tvShowDict {
    self = [super init];
    if (self) {
        self.name = tvShowDict[@"name"];
        self.title = tvShowDict[@"name"];
        self.overview = tvShowDict[@"overview"];
        self.voteAverage = [NSString stringWithFormat:@"%@", tvShowDict[@"vote_average"]];
        self.releaseDate = tvShowDict[@"first_air_date"];
        self.posterPath = tvShowDict[@"poster_path"];
    }
    return self;
}



@end
