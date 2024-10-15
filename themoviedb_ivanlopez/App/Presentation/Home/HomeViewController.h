//
//  HomeViewController.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <UIKit/UIKit.h>
#import "HomeViewModel.h"
#import "MovieCollectionViewCell.h"

@interface HomeViewController : UIViewController<HomeViewProtocol, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic, strong) HomeViewModel *viewModel;


@end
