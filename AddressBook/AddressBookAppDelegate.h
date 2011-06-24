//
//  AddressBookAppDelegate.h
//  AddressBook
//
//  Created by Shruti Malhotra on 6/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddressBookViewController;

@interface AddressBookAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet AddressBookViewController *viewController;

@end
