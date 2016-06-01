//
//  ShowBoxerViewController.m
//  MCMS
//
//  Created by Cindy Barnsdale on 6/1/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "ShowBoxerViewController.h"

@interface ShowBoxerViewController ()
@property (weak, nonatomic) IBOutlet UITextView *boxerTextView;
@property (weak, nonatomic) IBOutlet UITextView *specialMoveTextView;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *editButton;
@property BOOL isEditing;
@end

@implementation ShowBoxerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    self.title = self.boxer.name;
    self.boxerTextView.text = self.boxer.name;
    self.specialMoveTextView.text = self.boxer.specialMove;
    self.specialMoveTextView.editable = NO;
    self.boxerTextView.editable = NO;


    self.isEditing = false;
    
    
    
}
- (IBAction)onEditButtonTapped:(UIBarButtonItem *)sender {
    self.isEditing = !self.isEditing;
//    [sender setTitle:@"Done"];
    if (self.isEditing == true) {
        [sender setTitle:@"Done"];
        self.boxerTextView.editable = YES;
        self.specialMoveTextView.editable = YES;
    } else {
        [sender setTitle:@"Edit"];
        
    }
    

    


    
    
}






//- (IBAction)onEditButtonTapped:(UIButton *)sender {
//    self.editing = YES;
//    [sender setTitle:@"Done" forState:UIControlStateNormal];
//    [self.tableView setEditing:!self.tableView.editing];
//    if (self.isEditing) {
//        [sender setTitle:@"Edit" forState:UIControlStateNormal];;
//        self.isEditing = false;
//    } else {
//        [sender setTitle:@"Done" forState:UIControlStateNormal];;
//        self.isEditing = true;
//    }
//}




@end
