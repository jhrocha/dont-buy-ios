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

    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"\n\n\n\n\n\n\n\n\n\n\n" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIDatePicker *picker = [[UIDatePicker alloc] init];
    [picker setDatePickerMode:UIDatePickerModeDate];
    [alertController.view addSubview:picker];
    [alertController addAction:({
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [self.questionButton setTitle: [NSString stringWithFormat:@"%@",picker.date] forState:UIControlStateNormal];
            self.cause.visited_at= [NSString stringWithFormat:@"%@",picker.date];
        }];
        action;
    })];
    UIPopoverPresentationController *popoverController = alertController.popoverPresentationController;
    popoverController.sourceView = sender;
    popoverController.sourceRect = [sender bounds];
    [self presentViewController:alertController  animated:YES completion:nil];
    
}

- (IBAction)chooseAnswer:(id)sender {

    UIAlertController *alertAnswer= [UIAlertController alertControllerWithTitle:@"Motivo" message:@"Selecione qual o motivo que mais se adequa a não compra do cliente" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *answer1= [UIAlertAction actionWithTitle:@"Preço Alto" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Preço Alto";
        [self.answerButton setTitle:@"Preço Alto" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer2= [UIAlertAction actionWithTitle:@"Estava pesquisando preço" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Estava pesquisando preço";
        [self.answerButton setTitle:@"Estava pesquisando preço" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer3= [UIAlertAction actionWithTitle:@"Mau atendimento" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Mau atendimento";
        [self.answerButton setTitle:@"Mau atendimento" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer4= [UIAlertAction actionWithTitle:@"Acompanhante atrapalhou venda" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Acompanhante atrapalhou venda";
        [self.answerButton setTitle:@"Acompanhante atrapalhou venda" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer5= [UIAlertAction actionWithTitle:@"Esperar melhor dia de compra do cartão" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Esperar melhor dia de compra do cartão";
        [self.answerButton setTitle:@"Esperar melhor dia de compra do cartão" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer6= [UIAlertAction actionWithTitle:@"Viu oferta melhor em loja virtual" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Viu oferta melhor em loja virtual";
        [self.answerButton setTitle:@"Viu oferta melhor em loja virtual" forState:UIControlStateNormal];
    }];

    UIAlertAction *answer7= [UIAlertAction actionWithTitle:@"Visitou apenas por curiosidade" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Visitou apenas por curiosidade";
        [self.answerButton setTitle:@"Visitou apenas por curiosidade" forState:UIControlStateNormal];
    }];
    
    UIAlertAction *answer8= [UIAlertAction actionWithTitle:@"Prazo de entrega longo" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Prazo de entrega longo";
        [self.answerButton setTitle:@"Prazo de entrega longo" forState:UIControlStateNormal];
    }];

    UIAlertAction *answer9= [UIAlertAction actionWithTitle:@"Não gostou da marca" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.cause.answer= @"Não gostou da marca";
        [self.answerButton setTitle:@"Não gostou da marca" forState:UIControlStateNormal];
    }];
    
    [alertAnswer addAction:answer1];
    [alertAnswer addAction:answer2];
    [alertAnswer addAction:answer3];
    [alertAnswer addAction:answer4];
    [alertAnswer addAction:answer5];
    [alertAnswer addAction:answer6];
    [alertAnswer addAction:answer7];
    [alertAnswer addAction:answer8];
    [alertAnswer addAction:answer9];
    
    [self presentViewController:alertAnswer animated:YES completion:nil];
    
}

- (IBAction)sendData:(id)sender {
    self.cause.customer= self.customer;
    
    if (self.customer.gender == nil || self.customer.initial_age == nil || self.customer.final_age == nil || self.cause.visited_at  == nil || self.cause.answer == nil
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
