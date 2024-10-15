//
//  TvRepository.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <Foundation/Foundation.h>
#import "URLSessionHTTP.h"
#import "TvShow.h"

@interface TvRepository : NSObject

- (instancetype)init;
@property (nonatomic, strong) URLSessionHTTP *client;
@property (nonatomic, strong) NSCache<NSString *, NSArray<TvShow *>*>* tvShows;
- (void)fetchTvShowsWithPath:(NSString*)path completion:(void (^__strong)(NSArray<TvShow *> *__strong, NSError *__strong))completion;

@end
