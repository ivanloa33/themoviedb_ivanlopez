//
//  HomeViewModel.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <Foundation/Foundation.h>
#import "TvShowRepository.h"

@protocol HomeViewProtocol<NSObject>
- (void) reloadData;
@end

@interface HomeViewModel : NSObject

- (instancetype)init;
@property (nonatomic, strong) NSArray<Movie*> *popularMovies;
@property (nonatomic, strong) TvShowRepository *repository;
@property (nonatomic, strong) id<HomeViewProtocol> delegate;
- (void)getPopularMovies;

@end


