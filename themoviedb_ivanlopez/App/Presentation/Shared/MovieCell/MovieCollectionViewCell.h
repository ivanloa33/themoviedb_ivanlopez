//
//  MovieCollectionViewCell.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MovieCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
- (void)setupMovie:(Movie *)movie;

@end
