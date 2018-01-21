//
//  ViewController.m
//  TableViewObjC
//
//  Created by Perry Davies on 21/01/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

#import "ViewController.h"
#import "ViewModel.h"

@interface ViewController ()
 


@property (strong, nonatomic) IBOutlet ViewModel *modelview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     
    self.modelview.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
