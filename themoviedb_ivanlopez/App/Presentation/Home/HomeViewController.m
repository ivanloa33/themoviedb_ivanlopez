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
    self.title = @"TV Shows";
    self.navigationItem.hidesBackButton = YES;
    [self setupCollectionView];
    [self.viewModel fetchPopularMovies];
}

- (void)setupCollectionView {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(175, 350);
    layout.minimumInteritemSpacing = 8;
    layout.minimumLineSpacing = 7;
    self.collectionView.collectionViewLayout = layout;
    [self.collectionView registerNib:[UINib nibWithNibName:@"ItemCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"ItemCollectionViewCell"];
}

- (IBAction)didChangeSegmentControl:(UISegmentedControl *)sender {
    NSIndexPath *indexPathToTop = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.collectionView scrollToItemAtIndexPath:indexPathToTop atScrollPosition:UICollectionViewScrollPositionTop animated:YES];
    switch (sender.selectedSegmentIndex) {
        case 0:
            [self.viewModel fetchPopularMovies];
            break;
        case 1:
            [self.viewModel fetchTopRatedMovies];
            break;
        case 2:
            [self.viewModel fetchOnTVMovies];
            break;
        case 3:
            [self.viewModel fetchAiringTodayMovies];
            break;
        default:
            NSLog(@"UNKNOWN CASE");
    }
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath { 
    ItemCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"ItemCollectionViewCell" forIndexPath:indexPath];
    if (self.segmentControl.selectedSegmentIndex == 0 || self.segmentControl.selectedSegmentIndex == 1) {
        Movie *movie = self.viewModel.movies[indexPath.row];
        [cell setupCellWithMovie:movie];
    } else {
        TvShow *tvShow = self.viewModel.tvShows[indexPath.row];
        [cell setupCellWithTvShow:tvShow];
    }
    
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section { 
    return self.viewModel.movies.count;
}

- (void)reloadData {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.collectionView reloadData];
    });
}

@end
