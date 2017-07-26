//
//  SurveyWebViewController.h
//  MarkelyticsSurvey
//
//  Created by markelytics on 18/05/17.
//  Copyright © 2017 markelytics. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^MyBlockType)(NSString *,NSString*,NSString*);
static MyBlockType myblock;

typedef NS_ENUM(NSUInteger, MKSurveyViewPosition)
{
    MKUIFullScreenWithStatusBar = 0,
    MKUIFullScreenWithoutStatusBar  = 1,
    MKUISmall = 2,
    MKUILargeWithMargin = 3,
};

@interface SurveyViewController : UIViewController

+(UIViewController *)startSurveyWithKey:(NSString *)key setColor:(UIColor *)color setPosition:(MKSurveyViewPosition)position setMemberID:(NSString *)memberID setDeviceID:(NSString*)deviceID setExtraParameter:(NSMutableDictionary *)params completion: (void (^)(NSString *points,NSString*transactionId,NSString*Status))completionBlock;


@end
