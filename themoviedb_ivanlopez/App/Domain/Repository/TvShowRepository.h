//
//  TvShowRepository.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <Foundation/Foundation.h>
#import "URLSessionHTTP.h"

@interface TvShowRepository : NSObject

- (instancetype)init;
@property (nonatomic, strong) URLSessionHTTP *client;
@property (strong, nonatomic) NSArray<Movie *>* movies;
- (void)fetchPopularMoviesWithCompletion:(void (^)(NSArray<Movie *> *movies, NSError *error))completion;

@end
