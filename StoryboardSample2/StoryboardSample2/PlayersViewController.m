//
//  PlayersViewController.m
//  StoryboardSample2
//
//  Created by Hsee.com on 9/6/13.
//  Copyright (c) 2013 Jerry.li. All rights reserved.
//

#import "PlayersViewController.h"

#import "Player.h"

@interface PlayersViewController ()

@end

@implementation PlayersViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.players count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    
    // configure the cell
    Player * player = [self.players objectAtIndex:indexPath.row];
    cell.textLabel.text = player.name;
    cell.detailTextLabel.text = player.game;
    
    // return cell
    return cell;
}

@end
