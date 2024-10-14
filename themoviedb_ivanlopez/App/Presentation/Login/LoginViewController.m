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
    self.viewModel = [[LoginViewModel alloc] init];
    self.title = @"Login";
}

- (IBAction)didTapLogin:(UIButton *)sender {
    [self.viewModel getPopularMovies];
    self.viewModel.dataUpdatedBlock = ^(NSArray<Movie *> *movies) {
        NSLog(@"%@", movies);
    };
}

@end
