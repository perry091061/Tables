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

@end
