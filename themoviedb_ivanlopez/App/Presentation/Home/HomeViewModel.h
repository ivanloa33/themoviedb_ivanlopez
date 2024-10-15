//
//  HomeViewModel.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <Foundation/Foundation.h>
#import "MovieRepository.h"
#import "TvRepository.h"

@protocol HomeViewProtocol<NSObject>
- (void) reloadData;
@end

@interface HomeViewModel : NSObject

- (instancetype)init;
@property (nonatomic, strong) NSArray<Movie*> *movies;
@property (nonatomic, strong) NSArray<TvShow*> *tvShows;
@property (nonatomic, strong) MovieRepository *movieRepository;
@property (nonatomic, strong) TvRepository *tvShowRepository;
@property (nonatomic, strong) id<HomeViewProtocol> delegate;
- (void)fetchPopularMovies;
- (void)fetchAiringTodayMovies;
- (void)fetchOnTVMovies;
- (void)fetchTopRatedMovies;

@end


