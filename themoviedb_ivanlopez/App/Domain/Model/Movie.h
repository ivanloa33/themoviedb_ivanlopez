//
//  Movie.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 13/10/24.
//

#import <Foundation/Foundation.h>
#import "ItemCellViewProtocol.h"

@interface Movie : NSObject<ItemCellViewProtocol>

- (instancetype)initWithDictionary: (NSDictionary *)movieDict;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *overview;
@property (strong, nonatomic) NSString *voteAverage;
@property (strong, nonatomic) NSString *releaseDate;
@property (strong, nonatomic) NSString *posterPath;

@end

