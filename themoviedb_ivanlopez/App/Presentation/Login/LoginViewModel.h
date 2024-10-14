//
//  LoginViewModel.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <Foundation/Foundation.h>
#import "TvShowRepository.h"

@interface LoginViewModel : NSObject

- (instancetype)init;
@property (nonatomic, strong) NSArray<Movie*> *popularMovies;
- (void)getPopularMovies;
@property (nonatomic, copy) void (^dataUpdatedBlock)(NSArray<Movie*> *movies);

@end
