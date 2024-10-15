//
//  MovieCollectionViewCell.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import "MovieCollectionViewCell.h"

@implementation MovieCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setupMovie:(Movie *)movie {
    // Function body
    self.title.text = movie.title;
}

@end
