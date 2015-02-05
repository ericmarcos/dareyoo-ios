//
//  Created by Raimon Lapuente on 28/1/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import "LoginViewController.h"
#import "DYBetlineViewController.h"
#import "RLNetworkRequest.h"
#import "DYBetlineRepository.h"

@implementation LoginViewController

-(IBAction)performLogin:(id)sender
{
    RLNetworkRequest *network = [RLNetworkRequest network];
    DYBetlineRepository *repository = [DYBetlineRepository betRepositoryWithNetwork:network];
    DYBetlineViewController *betline = [DYBetlineViewController betlineViewControllerWithRepository:repository];
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:betline];
    [self presentViewController:navigation animated:YES completion:nil];
}
@end
