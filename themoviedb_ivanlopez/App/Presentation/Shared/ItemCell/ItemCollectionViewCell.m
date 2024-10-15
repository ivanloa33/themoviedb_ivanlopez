//
//  MovieCollectionViewCell.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import "ItemCollectionViewCell.h"

@implementation ItemCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setupCellWithItem:(id<ItemCellViewProtocol>)item {
    self.title.text = item.title;
    self.releaseDate.text = item.releaseDate;
    self.voteAverage.text = item.voteAverage;
    self.overview.text = item.overview;
}

@end
