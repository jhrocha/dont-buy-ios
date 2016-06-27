//
//  CausesTableViewController.m
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import "CausesViewController.h"

@implementation CausesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cause= [Cause new];
    self.request= [CausesRequests new];
    self.customer= [Customer new];
    
}

- (IBAction)chooseGender:(id)sender {

    UIAlertController *alertGender= [UIAlertController alertControllerWithTitle:@"Sexo do cliente" message:@"Escolha uma das opções abaixo" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *maleAction= [UIAlertAction actionWithTitle:@"Masculino" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.customer.gender= @"m";
        [self.genderButton setTitle:@"Masculino" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *femaleAction= [UIAlertAction actionWithTitle:@"Feminino" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.customer.gender= @"f";
        [self.genderButton setTitle:@"Feminino" forState:UIControlStateNormal];
    }];
    
    [alertGender addAction:maleAction];
    [alertGender addAction:femaleAction];
    
    [self presentViewController:alertGender animated:YES completion:nil];
    
}

- (IBAction)chooseAgegroup:(id)sender {
    
    UIAlertController *alertAgegroup= [UIAlertController alertControllerWithTitle:@"Faixa etária" message:@"Escolha uma faixa de idade aproximada para o cliente" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *age10to18= [UIAlertAction actionWithTitle:@"De 10 a 18 anos" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.customer.initial_age= @10;
        self.customer.final_age= @18;
        [self.ageGroupButton setTitle:@"10 a 18 anos" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *age18to25= [UIAlertAction actionWithTitle:@"De 18 a 25 anos" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.customer.initial_age= @18;
        self.customer.final_age= @25;
        [self.ageGroupButton setTitle:@"18 a 25 anos" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *age25to35= [UIAlertAction actionWithTitle:@"De 25 a 35 anos" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.customer.initial_age= @25;
        self.customer.final_age= @35;
        [self.ageGroupButton setTitle:@"25 a 35 anos" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *age35to45= [UIAlertAction actionWithTitle:@"De 35 a 45 anos" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.customer.initial_age= @35;
        self.customer.final_age= @45;
        [self.ageGroupButton setTitle:@"35 a 45 anos" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *age45to60= [UIAlertAction actionWithTitle:@"De 45 a 60 anos" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.customer.initial_age= @45;
        self.customer.final_age= @60;
        [self.ageGroupButton setTitle:@"45 a 60 anos" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *over60yearsOld= [UIAlertAction actionWithTitle:@"Acima de 60 anos" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.customer.initial_age= @60;
        self.customer.final_age= @150;
        [self.ageGroupButton setTitle:@"Acima de 60 anos" forState:UIControlStateNormal];
    }];
    
    [alertAgegroup addAction:age10to18];
    [alertAgegroup addAction:age18to25];
    [alertAgegroup addAction:age25to35];
    [alertAgegroup addAction:age35to45];
    [alertAgegroup addAction:age45to60];
    [alertAgegroup addAction:over60yearsOld];
    
    [self presentViewController:alertAgegroup animated:YES completion:nil];

}

- (IBAction)chooseQuestion:(id)sender {

    UIAlertController *alertQuestion= [UIAlertController alertControllerWithTitle:@"Pergunta" message:@"Quais das perguntas foram realizadas ao cliente?" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *question1= [UIAlertAction actionWithTitle:@"Pergunta 1" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.question= @"Pergunta 1";
        [self.questionButton setTitle:@"Pergunta 1" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *question2= [UIAlertAction actionWithTitle:@"Pergunta 2" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.question= @"Pergunta 2";
        [self.questionButton setTitle:@"Pergunta 2" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *question3= [UIAlertAction actionWithTitle:@"Pergunta 3" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.question= @"Pergunta 3";
        [self.questionButton setTitle:@"Pergunta 3" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *question4= [UIAlertAction actionWithTitle:@"Pergunta 4" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.question= @"Pergunta 4";
        [self.questionButton setTitle:@"Pergunta 4" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *question5= [UIAlertAction actionWithTitle:@"Pergunta 5" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.question= @"Pergunta 5";
        [self.questionButton setTitle:@"Pergunta 5" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *question6= [UIAlertAction actionWithTitle:@"Pergunta 6" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.question= @"Pergunta 6";
        [self.questionButton setTitle:@"Pergunta 6" forState:UIControlStateNormal];
    }];
    
    [alertQuestion addAction:question1];
    [alertQuestion addAction:question2];
    [alertQuestion addAction:question3];
    [alertQuestion addAction:question4];
    [alertQuestion addAction:question5];
    [alertQuestion addAction:question6];
    
    [self presentViewController:alertQuestion animated:YES completion:nil];
    
}

- (IBAction)chooseAnswer:(id)sender {

    UIAlertController *alertAnswer= [UIAlertController alertControllerWithTitle:@"Motivo" message:@"Selecione qual o motivo que mais se adequa a não compra do cliente" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *answer1= [UIAlertAction actionWithTitle:@"Resposta 1" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Resposta 1";
        [self.answerButton setTitle:@"Resposta 1" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer2= [UIAlertAction actionWithTitle:@"Resposta 2" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Resposta 2";
        [self.answerButton setTitle:@"Resposta 2" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer3= [UIAlertAction actionWithTitle:@"Resposta 3" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Resposta 3";
        [self.answerButton setTitle:@"Resposta 3" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer4= [UIAlertAction actionWithTitle:@"Resposta 4" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Resposta 4";
        [self.answerButton setTitle:@"Resposta 4" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer5= [UIAlertAction actionWithTitle:@"Resposta 5" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Resposta 5";
        [self.answerButton setTitle:@"Resposta 5" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer6= [UIAlertAction actionWithTitle:@"Resposta 6" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Resposta 6";
        [self.answerButton setTitle:@"Resposta 6" forState:UIControlStateNormal];
    }];
    
    [alertAnswer addAction:answer1];
    [alertAnswer addAction:answer2];
    [alertAnswer addAction:answer3];
    [alertAnswer addAction:answer4];
    [alertAnswer addAction:answer5];
    [alertAnswer addAction:answer6];
    
    [self presentViewController:alertAnswer animated:YES completion:nil];
    
}

- (IBAction)sendData:(id)sender {
    self.cause.customer= self.customer;
    
    if (self.customer.gender == nil || self.customer.initial_age == nil || self.customer.final_age == nil || self.cause.question  == nil || self.cause.answer == nil
        ) {
        UIAlertController *alert= [UIAlertController alertControllerWithTitle:@"Não consegui confirmar :(" message:@"Por favor, para prosseguir é necessário preencher todas as informações sobre o cliente e não compra" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okButton= [UIAlertAction actionWithTitle:@"Ok, vou preencher" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alert dismissViewControllerAnimated:YES completion:nil];
        }];
        
        [alert addAction:okButton];
        [self presentViewController:alert animated:YES completion:nil];
        
    }else{
        
        [JTProgressHUD show];
        [self.request createCause:self.cause withBlock:^(BOOL success, CauseResponse *cause, NSError *error) {
            
            if (success) {
                UIAlertController *alert= [UIAlertController alertControllerWithTitle:@"Parabéns! :-)" message:@"Muito bom! o motivo da não compra foi enviado!\n \nO envio das informações irá te ajudar a vender mais" preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *okButton= [UIAlertAction actionWithTitle:@"Obrigado" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
                    [alert dismissViewControllerAnimated:YES completion:nil];
                }];
                [alert addAction:okButton];
                [self presentViewController:alert animated:YES completion:nil];
                
                [self resetField];
            }else{
                UIAlertController *alert= [UIAlertController alertControllerWithTitle:@"Ocorreu algo estranho! :-(" message:@"Não foi possível enviar o motivo da não compra. Verifique sua internet e tenta novamente" preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *okButton= [UIAlertAction actionWithTitle:@"Tentar novamente" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
                    [alert dismissViewControllerAnimated:YES completion:nil];
                }];
                [alert addAction:okButton];
                [self presentViewController:alert animated:YES completion:nil];
            }
            
            [JTProgressHUD hide];
            
        }];
        
    }
    
}

- (void) resetField{
    [self.genderButton setTitle:@"Escolher genêro" forState:UIControlStateNormal];
    [self.ageGroupButton setTitle:@"Escolher F. etária" forState:UIControlStateNormal];
    [self.questionButton setTitle:@"Escolher pergunta" forState:UIControlStateNormal];
    [self.answerButton setTitle:@"Escolher o motivo" forState:UIControlStateNormal];
}
@end
