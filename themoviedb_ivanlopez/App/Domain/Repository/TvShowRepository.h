//
//  TvShowRepository.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <Foundation/Foundation.h>
#import "URLSessionHTTP.h"

@interface TvShowRepository : NSObject

@property (nonatomic, strong) URLSessionHTTP *client;
@property (strong, nonatomic) NSArray<Movie *>* movies;
- (void)fetchPopularMoviesWithCompletion:(void (^)(NSArray<Movie *> *data, NSError *error))completion;

@end
