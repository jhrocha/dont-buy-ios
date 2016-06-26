//
//  AuthenticationViewController.m
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import "AuthenticationViewController.h"
#import <JTProgressHUD/JTProgressHUD.h>

@interface AuthenticationViewController ()

@end

@implementation AuthenticationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.request= [AuthenticationRequest new];
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

- (IBAction)login:(id)sender {
    
    if ([self.emailTextfield.text isEqualToString:@""] || [self.passwordTextfield.text isEqualToString:@""]) {
        
        UIAlertController  *alert= [UIAlertController alertControllerWithTitle:@"Não é possível continuar :(" message:@"Preencha todos os campos para continuar" preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *okButton= [UIAlertAction actionWithTitle:@"Tentar novamente" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alert dismissViewControllerAnimated:YES completion:nil];
        }];
        
        [alert addAction:okButton];
        
        [self presentViewController:alert animated:YES completion:nil];
        
    }else{
    
        Signin *signin= [Signin new];
        signin.email= self.emailTextfield.text.lowercaseString;
        signin.password= self.passwordTextfield.text.lowercaseString;
        
        [JTProgressHUD show];
        [self.request SigninUser:signin withBlock:^(BOOL success, NSString *token, NSError *error) {
            
            if (success) {
                NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
                [defaults setObject:token forKey:@"token"];
                [defaults synchronize];
                
                //Segue to other view
            
            }else{
                
                UIAlertController  *alert= [UIAlertController alertControllerWithTitle:@"Parece que há algo errado :(" message:@"Verifique se seu email e senha estão corretos" preferredStyle:UIAlertControllerStyleAlert];
                
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

- (IBAction)signup:(id)sender {
}
@end
