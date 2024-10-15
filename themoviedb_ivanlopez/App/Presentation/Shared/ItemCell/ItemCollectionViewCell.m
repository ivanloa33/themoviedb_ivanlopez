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

- (void)setupCellWithMovie:(Movie *)movie {
    // Function body
    self.title.text = movie.title;
}

- (void)setupCellWithTvShow:(TvShow *)tvShow {
    self.title.text = tvShow.name;
}

@end
