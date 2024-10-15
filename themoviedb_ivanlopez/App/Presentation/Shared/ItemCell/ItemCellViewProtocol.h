//
//  ItemCellViewProtocol.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 15/10/24.
//

@protocol ItemCellViewProtocol<NSObject>

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *overview;
@property (strong, nonatomic) NSString *voteAverage;
@property (strong, nonatomic) NSString *releaseDate;

@end
