//
//  AnimatetPicsTableViewController.m
//  YYImageIssueDemo
//
//  Created by GeXiao on 21/03/2017.
//  Copyright © 2017 GeXiao. All rights reserved.
//

#import "AnimatetPicsTableViewController.h"
#import "AnimationTableViewCell.h"

@interface AnimatetPicsTableViewController ()

@end

@implementation AnimatetPicsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 100.f;
    [self.tableView registerClass:[AnimationTableViewCell class] forCellReuseIdentifier:AnimationTableViewCellReuseIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.animationURLArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AnimationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:AnimationTableViewCellReuseIdentifier forIndexPath:indexPath];
    [cell renderCellWithURLString:self.animationURLArray[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    AnimationTableViewCell *currentCell = (AnimationTableViewCell *)cell;
    [currentCell.animatedImageView startAnimating];
}

- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    AnimationTableViewCell *currentCell = (AnimationTableViewCell *)cell;
    [currentCell.animatedImageView stopAnimating];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
