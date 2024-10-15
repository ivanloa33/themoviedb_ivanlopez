//
//  MovieCollectionViewCell.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <UIKit/UIKit.h>
#import "Movie.h"
#import "TvShow.h"
#import "ItemCellViewProtocol.h"

@interface ItemCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *releaseDate;
@property (weak, nonatomic) IBOutlet UILabel *voteAverage;
@property (weak, nonatomic) IBOutlet UILabel *overview;
- (void)setupCellWithItem:(id<ItemCellViewProtocol>)item;

@end
