//
//  AddressBookViewController.h
//  AddressBook
//
//  Created by Shruti Malhotra on 6/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

@interface AddressBookViewController : UIViewController<ABPeoplePickerNavigationControllerDelegate>
{
   IBOutlet UILabel *firstname;
   IBOutlet UILabel *lastname;
   IBOutlet UILabel *number;
   IBOutlet UIButton *get_details;
    IBOutlet UIImageView *bckgrnd_img;
    
    
}
- (IBAction) get_details;

@end
