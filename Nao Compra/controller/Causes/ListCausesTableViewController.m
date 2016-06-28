//
//  ListCausesTableViewController.m
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 27/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import "ListCausesTableViewController.h"

@interface ListCausesTableViewController ()

@end

@implementation ListCausesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.request= [CausesRequests new];
    self.causesList= [NSArray new];
    self.tableView.dataSource= self;
    self.tableView.delegate= self;
    [self receiveCauses];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.causesList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CauseResponse *response= self.causesList[indexPath.row];
    
    CauseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cause" forIndexPath:indexPath];
    cell.question.text=response.cause.question;
    cell.answer.text=response.cause.answer;
    Customer *customer= response.customer;
    
    if (customer.initial_age.intValue <18 && customer.final_age.intValue >= 18 ) {
        
        cell.ageGroupColor.backgroundColor= [UIColor lightGrayColor];
        cell.ageGroup.text= @"Entre 10 e 18 anos";
        
    }else if (customer.initial_age.intValue >=18 && customer.final_age.intValue <= 25 ){
        
        cell.ageGroupColor.backgroundColor= [UIColor greenColor];
        cell.ageGroup.text= @"Entre 18 e 25 anos";
        
    }else if (customer.initial_age.intValue >=25 && customer.final_age.intValue <= 35 ){
        
        cell.ageGroupColor.backgroundColor= [UIColor orangeColor];
        cell.ageGroup.text= @"Entre 25 e 35 anos";
        
    }else if (customer.initial_age.intValue >=35 && customer.final_age.intValue <= 45 ){
        
        cell.ageGroupColor.backgroundColor= [UIColor redColor];
        cell.ageGroup.text= @"Entre 35 e 45 anos";
        
    }else if (customer.initial_age.intValue >=45 && customer.final_age.intValue <= 60 ){
        
        cell.ageGroupColor.backgroundColor= [UIColor grayColor];
        cell.ageGroup.text= @"Entre 45 e 60 anos";
        
    }else if (customer.final_age.intValue >= 60 ){
    
        cell.ageGroupColor.backgroundColor= [UIColor blackColor];
        cell.ageGroup.text= @"Acima de 60 anos";
    }
    
    cell.date.text= response.cause.created_at;
    
    return cell;
}

- (void) receiveCauses{
    
    ListCausesRequestModel *params= [ListCausesRequestModel new];

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = @"dd/MM/yyyy";

    params.startDate = [dateFormatter dateFromString:@"01/01/2000"];
    params.finalDate= [NSDate date];
    
    [JTProgressHUD show];
    [self.request listCauses:params withBlock:^(BOOL success, NSArray *causes, NSError *error) {
        if (success) {
            if(causes){
                self.causesList= causes;
                [self.tableView reloadData];
            }
        }else{
            UIAlertController *alert= [UIAlertController alertControllerWithTitle:@"Ocorreu algo estranho :-(" message:@"Não foi possível carregar as informações das não compras. Verifique sua internet e tente novamente." preferredStyle:UIAlertControllerStyleAlert ];
            UIAlertAction *okButton= [UIAlertAction actionWithTitle:@"Tentar novamente" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
                [alert dismissViewControllerAnimated:YES completion:nil];
            }];
            [alert addAction:okButton];
            [self presentViewController:alert animated:YES completion:nil];
        }
        [JTProgressHUD hide];
    }];
    
}

@end
