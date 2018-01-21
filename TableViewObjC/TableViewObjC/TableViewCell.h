//
//  TableViewCell.h
//  TableViewObjC
//
//  Created by Perry Davies on 21/01/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//
 
#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (strong,nonatomic) IBOutlet UILabel *title;
@property (strong,nonatomic) IBOutlet UILabel *subTitle;

@end
