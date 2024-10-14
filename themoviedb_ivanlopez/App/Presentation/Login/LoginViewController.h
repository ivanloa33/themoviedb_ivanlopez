//
//  LoginViewController.h
//  themoviedb_ivanlopez
//
//  Created by Ivan Lopez Ansaldo on 11/10/24.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

