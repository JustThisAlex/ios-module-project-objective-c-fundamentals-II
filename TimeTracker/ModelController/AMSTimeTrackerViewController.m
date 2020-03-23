//
//  AMSTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Alexander Supe on 23.03.20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "AMSTimeTrackerViewController.h"
#import "AMSTimedTaskController.h"
#import "AMSTimedTask.h"

@interface AMSTimeTrackerViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *summaryField;
@property (weak, nonatomic) IBOutlet UITextField *rateField;
@property (weak, nonatomic) IBOutlet UITextField *timeField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) AMSTimedTaskController *controller;

@end

@implementation AMSTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _controller = [AMSTimedTaskController new];
    _tableView.dataSource = self;
}

- (IBAction)logTime:(id)sender {
    [_controller createTimedTaskWithClient:_nameField.text summary:_summaryField.text rate:[NSNumber numberWithDouble:_rateField.text.doubleValue] hours:[NSNumber numberWithDouble:_timeField.text.doubleValue]];
    [_tableView reloadData];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    AMSTimedTask *task = _controller.tasks[indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSNumberFormatter localizedStringFromNumber:task.total numberStyle:NSNumberFormatterCurrencyStyle];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _controller.tasks.count;
}


@end
