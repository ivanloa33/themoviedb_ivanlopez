//
//  LoginViewController.m
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 11/10/24.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewModel = [[LoginViewModel alloc] init];
    self.title = @"Login";
}

- (IBAction)didTapLogin:(UIButton *)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HomeViewModel *homeViewModel = [[HomeViewModel alloc] init];
    HomeViewController *homeViewController = [storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
    homeViewController.viewModel = homeViewModel;
    [self.navigationController pushViewController:homeViewController animated:TRUE];
}

@end
