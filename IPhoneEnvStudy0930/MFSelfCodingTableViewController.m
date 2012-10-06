//
//  MFSelfCodingTableViewController.m
//  IPhoneEnvStudy0930
//
//  Created by mfks17 on 9/30/12.
//  Copyright (c) 2012 mfks17. All rights reserved.
//

#import "MFSelfCodingTableViewController.h"


@interface MFSelfCodingTableViewController ()

@property (nonatomic, retain)UILabel *switchLabel;
@property (nonatomic, retain)UILabel *sliderLabel;
@property (nonatomic, retain)UISwitch *myswitch;
@property (nonatomic, retain)UISlider *myslider;

@end

@implementation MFSelfCodingTableViewController

@synthesize switchLabel = _switchLabel;
@synthesize sliderLabel = _sliderLabel;
@synthesize myslider = _myslider;
@synthesize myswitch = _myswitch;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 2;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    switch(section) {
        case 0: // 1個目のセクションの場合
            return @"Section-1";
            break;
        case 1: // 2個目のセクションの場合
            return @"Section-2";
            break;
    }
    return nil; //ビルド警告回避用
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        
        switch (indexPath.section) {
            case 0:
                cell.userInteractionEnabled = NO;
                if(indexPath.row == 0) {
                    self.sliderLabel = [[UILabel alloc]initWithFrame:CGRectMake(51.0f, 11.0f, 76.0f, 21.0f)];
                    self.sliderLabel.text = @"0";
                    self.sliderLabel.backgroundColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.0f];
                    [cell.contentView addSubview:self.sliderLabel];
                } else if(indexPath.row == 1){
                    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(51.0f, 11.0f, 85.0f, 21.0f)];
                    label.text = @"スイッチ";
                    label.backgroundColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.0f];
                    self.switchLabel = [[UILabel alloc]initWithFrame:CGRectMake(184.0f, 11.0f, 42.0f, 21.0f)];
                    self.switchLabel.text = @"OFF";
                    self.switchLabel.backgroundColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.0f];
                    [cell.contentView addSubview:label];
                    [cell.contentView addSubview:self.switchLabel];
                }
                break;
                
            case 1:
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
                if (indexPath.row == 0) {
                    self.myslider = [[UISlider alloc]initWithFrame:CGRectMake(36.0f, 11.0f, 228.0f, 23.0f)];
                    [self.myslider addTarget:self action:@selector(sliderAction:)
                            forControlEvents:UIControlEventValueChanged];
                    [cell.contentView addSubview:self.myslider];
                }else if(indexPath.row == 1){
                    self.myswitch = [[UISwitch alloc]initWithFrame:CGRectMake(111.0f, 9.0f, 79.0f, 27.0f)];
                    [self.myswitch addTarget:self action:@selector(switchAction:)
                            forControlEvents:UIControlEventValueChanged];
                    [cell.contentView addSubview:self.myswitch];
                }
                break;
            default:
                break;
        }
        
    }
    // Configure the cell...
    return cell;
    
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

- (void)sliderAction:(id)sender{
    self.sliderLabel.text = [NSString stringWithFormat:@"%f", self.myslider.value];
    
}

- (void)switchAction:(id)sender{
    if (self.myswitch.on) {
        self.switchLabel.text = @"ON";
    }else {
        self.switchLabel.text = @"OFF";
    }
}

@end