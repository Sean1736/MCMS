//
//  ShowBoxerViewController.m
//  MCMS
//
//  Created by Cindy Barnsdale on 6/1/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "ShowBoxerViewController.h"

@interface ShowBoxerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *boxerLabel;

@end

@implementation ShowBoxerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.boxer.name;
    self.boxerLabel.text = self.boxer.specialMove;
    
    
    
}




@end
