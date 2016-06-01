//
//  BoxerViewController.m
//  MCMS
//
//  Created by Cindy Barnsdale on 6/1/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "BoxerViewController.h"
#import "Boxer.h"
#import "ShowBoxerViewController.h"

@interface BoxerViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *specialMoveTextField;
@property NSMutableArray *boxers;
@end

@implementation BoxerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self generateStartingBoxers];
    
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


-(void)generateStartingBoxers{
    Boxer *rocky = [[Boxer alloc] initWithName:@"Rocky Balboa" andSpecialMove:@"Eye of the Tiger"];
    Boxer *apollo = [[Boxer alloc] initWithName:@"Apollo Creed" andSpecialMove:@"The Creed Finisher"];
    Boxer *clubber = [[Boxer alloc] initWithName:@"Clubber Lang" andSpecialMove:@"Pity the Fool"];
    Boxer *ivan = [[Boxer alloc] initWithName:@"Ivan Drago" andSpecialMove:@"Soviet Bomb"];
    Boxer *tommy = [[Boxer alloc] initWithName:@"Tommy Gunn" andSpecialMove:@"Mad Gunner"];
    self.boxers = [NSMutableArray arrayWithObjects:rocky, apollo, clubber, ivan, tommy, nil];
}

- (IBAction)onAddButtonPressed:(id)sender {
    
    Boxer *newBoxer = [[Boxer alloc] initWithName:self.nameTextField.text andSpecialMove:self.specialMoveTextField.text];
    [self.boxers addObject:newBoxer];
    
    // This clears text fields after clicking add.
    self.nameTextField.text = [NSString stringWithFormat:@""];
    self.specialMoveTextField.text = [NSString stringWithFormat:@""];
    
    [self.tableView reloadData];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    ShowBoxerViewController *dvc = segue.destinationViewController;
    dvc.boxer = self.boxers[indexPath.row];
}

@end
