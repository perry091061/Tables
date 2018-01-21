//
//  ViewModel.m
//  TableViewObjC
//
//  Created by Perry Davies on 21/01/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel
NSString *cellIdentifier = @"cell";



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    TableViewCell *cell = (TableViewCell *)  [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.title.text = [NSString stringWithFormat:@"Title row %ld",(long)indexPath.row];
    cell.subTitle.text = [NSString stringWithFormat:@"Sub title row %ld",indexPath.row];
    cell.aImageView.image = [UIImage imageNamed:@"tshirt"];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Section Header %ld",section];
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Section Footer %ld",section];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert DELETE" message:@"DO YOU WISH TO DELETE?" preferredStyle:UIAlertControllerStyleActionSheet];
    
    
    [self.delegate presentViewController:alert animated:true completion:nil];
}

@end
