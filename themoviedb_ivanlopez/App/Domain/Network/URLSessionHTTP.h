//
//  URLSessionHTTP.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 11/10/24.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

@interface URLSessionHTTP : NSObject

@property (nonatomic, strong) NSURLSession *session;
- (instancetype)initWithSession:(NSURLSession *)session;
- (void)fetchDataWith: (NSString *)path completionHandler: (void (^)(id result, NSError *error))completionHandler;

@end
