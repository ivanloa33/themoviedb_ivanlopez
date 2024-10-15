//
//  MovieRepository.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import "MovieRepository.h"

@implementation MovieRepository

- (instancetype)init {
    self = [super init];
    self.client = [[URLSessionHTTP alloc] init];
    self.movies = [[NSCache alloc] init];
    return self;
}

- (void)fetchMoviesWithPath:(NSString*)path completion:(void (^__strong)(NSArray<Movie *> *__strong, NSError *__strong))completion {
    NSArray<Movie *> *cachedMovies = [self.movies objectForKey:path];
    if (cachedMovies) {
        completion(cachedMovies, nil);
        return;
    }
    
    [self.client fetchDataWith:path completionHandler:^(id result, NSError *error) {
        if (error != NULL) {
            NSLog(@"%@", error);
            return;
        } else {
            
            NSError *jsonError = nil;
            NSDictionary *responseJSON = [NSJSONSerialization JSONObjectWithData:result options:0 error:&jsonError];
            NSMutableArray<Movie *> *movies = NSMutableArray.new;
            
            if (jsonError) {
                return;
            }
            for (NSDictionary *movieDict in responseJSON[@"results"]) {
                Movie *newMovie = [[Movie alloc] initWithDictionary:movieDict];
                [movies addObject:newMovie];
            }
            [self.movies setObject:movies forKey:path];
            completion(movies, nil);
        }
    }];
}

@end
