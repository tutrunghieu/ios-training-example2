//
//  MasterVC.m
//  bai2
//
//  Created by Macmini on 6/15/16.
//  Copyright © 2016 SilkRoadPacific. All rights reserved.
//

#import "MasterVC.h"
#import "HeaderBarCell.h"
#import "DefaultDataCell.h"
#import "DetailVC.h"

@interface MasterVC () 	<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITableView *mainView;

@end

@implementation MasterVC
		
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.mainView setHidden:NO];
    [self.mainView setDataSource:self];
    [self.mainView setDelegate:self];
    
    [self.mainView registerNib:[UINib nibWithNibName:@"HeaderBarCell" bundle:[NSBundle mainBundle]]
        forCellReuseIdentifier:@"ID_HeaderBarCell"];
    
    [self.mainView registerNib:[UINib nibWithNibName:@"DefaultDataCell" bundle:[NSBundle mainBundle]]
        forCellReuseIdentifier:@"ID_DefaultDataCell"];
    
    
    [self.mainView reloadData];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40.0f;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0)
    {
        static NSString* cellID = @"ID_HeaderBarCell";
        
        HeaderBarCell* cell = (HeaderBarCell*)[tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell)
        {
            cell = [[HeaderBarCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        
        
        //cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    
    else
    {
        static NSString* cellID = @"ID_DefaultDataCell";
        
        DefaultDataCell* cell = (DefaultDataCell*)[tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell)
        {
            cell = [[DefaultDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        
        
        //cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
        
    }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailVC* view1 = [[DetailVC alloc] init];
    view1.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:view1 animated:YES completion:^{}];
}

@end
