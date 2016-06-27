//
//  ListCausesTableViewController.h
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 27/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CauseTableViewCell.h"
#import "CausesRequests.h"
#import <JTProgressHUD/JTProgressHUD.h>

@interface ListCausesTableViewController : UITableViewController <UITableViewDataSource,UITableViewDelegate>

@property CausesRequests *request;
@property NSArray *causesList;

@end
