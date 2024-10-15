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
    self.title.text = movie.title;
    self.releaseDate.text = movie.releaseDate;
    self.voteAverage.text = movie.voteAverage;
    self.overview.text = movie.overview;
}

- (void)setupCellWithTvShow:(TvShow *)tvShow {
    self.title.text = tvShow.name;
    self.releaseDate.text = tvShow.releaseDate;
    self.voteAverage.text = tvShow.voteAverage;
    self.overview.text = tvShow.overview;
}

@end
