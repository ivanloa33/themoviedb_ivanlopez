//
//  ServiceRequest.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 11/10/24.
//

#import "URLSessionHTTP.h"

@implementation URLSessionHTTP

- (instancetype)initWithSession:(NSURLSession *)session {
    self = [super init];
    if (session == nil) {
        self.session = [NSURLSession sharedSession] ;
    }
    return self;
}

- (void)fetchDataForTvShowPath:(NSString *)path completionHandler:(void (^__strong)(__strong id, NSError *__strong))completionHandler {
    
    NSURL *url = [self createURLWithPath:path];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod: @"GET"];

    NSURLSessionTask *task = [NSURLSession.sharedSession dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            completionHandler(nil,error);
            return;
        }
        
        NSError *jsonError = nil;
        NSDictionary *responseJSON = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        
        if (jsonError) {
            completionHandler(nil, jsonError);
            return;
        }
        
//        NSMutableArray<Movie *> *movies = NSMutableArray.new;
//        for (NSDictionary *movieDict in responseJSON[@"results"]) {
//            Movie *newMovie = [[Movie alloc] initWithDictionary:movieDict];
//            [movies addObject:newMovie];
//        }
        
        completionHandler(responseJSON, nil);
        

    }];
    
    [task resume];
}

- (NSURL *)createURLWithPath:(NSString *)path {
    NSArray<NSURLQueryItem *> *queryItems = @[
        [NSURLQueryItem queryItemWithName:@"api_key" value:@"01f87718c3e7c9c77a7575689846a707"]
    ];
    
    NSURLComponents *urlComponents = [[NSURLComponents alloc] init];
    urlComponents.scheme = @"https";
    urlComponents.host = @"api.themoviedb.org";
    urlComponents.queryItems = queryItems;
    
    urlComponents.path = [@"/3/movie" stringByAppendingString: path];
    return urlComponents.URL;
}

@end
