//
//  HomeViewController.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import "HomeViewController.h"

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.viewModel getPopularMovies];
    self.viewModel.dataUpdatedBlock = ^(NSArray<Movie *> *movies) {
        NSLog(@"%@", movies);
    };
}

@end
