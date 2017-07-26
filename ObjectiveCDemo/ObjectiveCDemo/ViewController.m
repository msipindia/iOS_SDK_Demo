//
//  ViewController.m
//  ObjectiveCDemo
//
//  Created by Kuldeep on 26/07/17.
//  Copyright © 2017 Markelytics Ind pvt ltd. All rights reserved.
//

#import "ViewController.h"
#import <MarkelyticsSurvey/SurveyViewController.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)click:(UIButton *)sender {
    NSMutableDictionary *dictionary=[NSMutableDictionary new];
    [dictionary setValue:@"testvalu" forKey:@"testkey"];
    
    UIViewController* viewController=[SurveyViewController     startSurveyWithKey:<API Key> setColor:[UIColor blueColor] setPosition:MKUILargeWithMargin setMemberID:@"test memberID" setDeviceID:@"test device ID" setExtraParameter:dictionary completion:^(NSString *points, NSString *transactionId, NSString *Status) {
        NSLog(@"GOT POINTS %@", points);
        NSLog(@"GOT TX ID %@", transactionId);
        NSLog(@"GOT Status %@",Status);
        
    }];
    
    
    [self presentViewController:viewController animated:YES completion:nil];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
