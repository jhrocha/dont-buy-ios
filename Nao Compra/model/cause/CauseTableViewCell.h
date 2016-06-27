//
//  CauseTableViewCell.h
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 27/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CauseTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *date;
@property (strong, nonatomic) IBOutlet UILabel *question;
@property (strong, nonatomic) IBOutlet UILabel *answer;
@property (strong, nonatomic) IBOutlet UIView *ageGroupColor;


@end
