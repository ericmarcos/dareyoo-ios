//
//  Created by Raimon Lapuente on 28/1/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import "LoginViewController.h"
#import "DYBetlineViewController.h"

@implementation LoginViewController

-(IBAction)performLogin:(id)sender
{
    DYBetlineViewController *betline = [[DYBetlineViewController alloc] init];
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:betline];
    [self presentViewController:navigation animated:YES completion:nil];
}
@end
