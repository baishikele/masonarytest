//
//  TableViewController.m
//  masonry练习
//
//  Created by shakalaka on 16/12/7.
//  Copyright © 2016年 shakalaka. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "UITableView+FDTemplateLayoutCell.h"

@interface TableViewController ()

@property (nonatomic, strong) NSArray * data;

@end

@implementation TableViewController

- (NSArray *)data{

    if (_data == nil) {
        
        _data = @[@"mment the following line to preserve selection betwee",
                  @"l需要使用tableView的registerNib或者registerClass的方法进行注册，否则会报异常。",
                  @"l需要使用tableView的registerNib或者registerClass的方法进行注册，否则会报异常。Cell重用时，高度未更新，而数据发生改变后，在高度不足的情况下，会抛高度相关的约束冲突异常。对于这种情况需要在prepareForReuse中uninstall造成冲突的约束，在设置View的时候再install."];
    }
    return _data;
}

NSString * cellID = @"cellid";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:cellID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView fd_heightForCellWithIdentifier:cellID cacheByIndexPath:indexPath configuration:^(TableViewCell *cell) {
        cell.str = self.data[indexPath.row];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows

    return self.data.count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
    // Configure the cell...
    TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    cell.str = self.data[indexPath.row];
    
    return cell;
}
- (void)dealloc{

    NSLog(@"%s", __func__);
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
