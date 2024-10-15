//
//  TvShow.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 14/10/24.
//

#import <Foundation/Foundation.h>

@interface TvShow : NSObject

- (instancetype)initWithDictionary: (NSDictionary *)movieDict;
@property (strong, nonatomic) NSString *name;


@end
