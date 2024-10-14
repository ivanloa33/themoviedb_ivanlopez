//
//  LoginViewController.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 11/10/24.
//

#import "LoginViewController.h"
#import "URLSessionHTTP.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Login";
}

- (IBAction)didTapLogin:(UIButton *)sender {
    URLSessionHTTP *request = [[URLSessionHTTP alloc] init];
    [request fetchDataForTvShowPath:@"/popular" completionHandler:^(id result, NSError *error) {
        if (error != NULL) {
            NSLog(@"%@", error);
            return;
        } else {
            NSLog(@"%@", result);
        }
    }];
}


@end
