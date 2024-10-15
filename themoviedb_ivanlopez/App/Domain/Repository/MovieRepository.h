//
//  MovieRepository.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <Foundation/Foundation.h>
#import "URLSessionHTTP.h"

@interface MovieRepository : NSObject

- (instancetype)init;
@property (nonatomic, strong) URLSessionHTTP *client;
@property (strong, nonatomic) NSArray<Movie *>* movies;
- (void)fetchMoviesWithPath:(NSString*)path completion:(void (^__strong)(NSArray<Movie *> *__strong, NSError *__strong))completion;

@end
