//
//  TRLViewController.m
//  test.reallife
//
//  Created by Startups on 9/15/14.
//  Copyright (c) 2014 TriApps. All rights reserved.
//

#import "TRLViewController.h"

@interface TRLViewController ()

@end

@implementation TRLViewController

- (IBAction)updateFacebook
{
    NSURL *url = [NSURL URLWithString:@"http://192.168.0.19:8080/com.reallife/api/v1/test/3"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response,NSData *data, NSError *connectionError){
        if(data.length > 0 && connectionError == nil)
        {
            self.fbStatus.text = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
        }
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
