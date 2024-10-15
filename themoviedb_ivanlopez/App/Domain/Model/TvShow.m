//
//  TvShow.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import "TvShow.h"

@implementation TvShow

- (instancetype)initWithDictionary: (NSDictionary *)movieDict {
    self = [super init];
    if (self) {
        self.name = movieDict[@"name"];
    }
    return self;
}

@end
