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
    NSString *path = [@"https://image.tmdb.org/t/p/w500" stringByAppendingString:item.posterPath];
    self.title.text = item.title;
    self.releaseDate.text = item.releaseDate;
    self.voteAverage.text = item.voteAverage.length > 3 ? [item.voteAverage substringToIndex:3] : item.voteAverage;
    self.overview.text = item.overview;
    [self.poster loadImagefromString:path];
}

@end
