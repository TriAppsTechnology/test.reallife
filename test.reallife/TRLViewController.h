//
//  TRLViewController.h
//  test.reallife
//
//  Created by Startups on 9/15/14.
//  Copyright (c) 2014 TriApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TRLViewController : UIViewController

@property (nonatomic,strong) IBOutlet UILabel *fbStatus;
@property (nonatomic,strong) IBOutlet UIButton *connect;


- (IBAction)updateFacebook;

@end
