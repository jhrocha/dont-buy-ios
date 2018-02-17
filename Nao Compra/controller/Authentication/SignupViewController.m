//
//  SignupViewController.m
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import "SignupViewController.h"

@interface SignupViewController ()

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.request= [AuthenticationRequest new];
    self.signupButton.layer.borderColor= [UIColor colorWithRed:0.88 green:0.19 blue:0.43 alpha:1.0].CGColor;
    self.signupButton.layer.borderWidth= 0.4f;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)signup:(id)sender {
    
    [self.emailTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
    [self.cpfTextField resignFirstResponder];
    
    if ([self.emailTextField.text isEqualToString:@""] || [self.passwordTextField.text isEqualToString:@""] || [self.cpfTextField.text isEqualToString:@""]) {
        
        UIAlertController  *alert= [UIAlertController alertControllerWithTitle:@"Não é possível continuar :(" message:@"Preencha todos os campos para continuar" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okButton= [UIAlertAction actionWithTitle:@"Tentar novamente" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alert dismissViewControllerAnimated:YES completion:nil];
        }];
        
        [alert addAction:okButton];
        
        [self presentViewController:alert animated:YES completion:nil];
        
    }else{
        
        Signup *signup= [Signup new];
        signup.email= self.emailTextField.text.lowercaseString;
        signup.password= self.passwordTextField.text.lowercaseString;
        signup.cpf= self.cpfTextField.text.lowercaseString;
        signup.role= @"salesman";
        
        [JTProgressHUD show];
        [self.request CreateUser:signup withBlock:^(BOOL success, SignupResponse *signup, NSError *error) {
            
            if (success) {
                NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
                [defaults setObject:signup.token forKey:@"token"];
                [defaults synchronize];
                
                UIStoryboard *storyboard= [UIStoryboard storyboardWithName:@"Main_Storyboard" bundle:nil];
                UITabBarController *controller= [storyboard instantiateViewControllerWithIdentifier:@"TabBarController"];
                
                [self presentViewController:controller animated:YES completion:nil];
                
            }else{
                
                UIAlertController  *alert= [UIAlertController alertControllerWithTitle:@"Parece que há algo errado :(" message:@"Verifique se as informações digitadas estão corretas" preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction *okButton= [UIAlertAction actionWithTitle:@"Tentar novamente" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    [alert dismissViewControllerAnimated:YES completion:nil];
                }];
                
                [alert addAction:okButton];
                
                [self presentViewController:alert animated:YES completion:nil];
                
            }
            
            [JTProgressHUD hide];
            
        }];
        
    }
    
}
@end
