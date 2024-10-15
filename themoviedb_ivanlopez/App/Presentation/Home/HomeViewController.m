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
    [self.viewModel getPopularMovies];
}

- (void)setupCollectionView {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(175, 350);
    layout.minimumInteritemSpacing = 8;
    layout.minimumLineSpacing = 7;
    self.collectionView.collectionViewLayout = layout;
    [self.collectionView registerNib:[UINib nibWithNibName:@"MovieCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"MovieCollectionViewCell"];
}

- (IBAction)didChangeSegmentControl:(UISegmentedControl *)sender {
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath { 
    MovieCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"MovieCollectionViewCell" forIndexPath:indexPath];
    Movie *movie = self.viewModel.popularMovies[indexPath.row];
    [cell setupMovie:movie];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section { 
    return self.viewModel.popularMovies.count;
}

- (void)reloadData {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.collectionView reloadData];
    });
}

@end
