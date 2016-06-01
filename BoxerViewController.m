//
//  BoxerViewController.m
//  MCMS
//
//  Created by Cindy Barnsdale on 6/1/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "BoxerViewController.h"
#import "Boxer.h"

@interface BoxerViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *boxers;
@end

@implementation BoxerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Boxer *rocky = [[Boxer alloc] initWithName:@"Rocky Balboa" andSpecialMove:@"Eye of the Tiger"];
     Boxer *apollo = [[Boxer alloc] initWithName:@"Apollo Creed" andSpecialMove:@"The Creed Finisher"];
     Boxer *clubber = [[Boxer alloc] initWithName:@"Clubber Lang" andSpecialMove:@"Pity the Fool"];
     Boxer *ivan = [[Boxer alloc] initWithName:@"Ivan Drago" andSpecialMove:@"Soviet Bomb"];
    Boxer *tommy = [[Boxer alloc] initWithName:@"Tommy Gunn" andSpecialMove:@"Mad Gunner"];
    self.boxers = [NSMutableArray arrayWithObjects:rocky, apollo, clubber, ivan, tommy, nil];
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.boxers.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    Boxer *boxer = self.boxers[indexPath.row];
    cell.textLabel.text = boxer.name;
    cell.detailTextLabel.text = boxer.specialMove;
    return cell;
    
}


@end
