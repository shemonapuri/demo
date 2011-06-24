//
//  AddressBookViewController.m
//  AddressBook
//
//  Created by Shruti Malhotra on 6/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AddressBookViewController.h"

@implementation AddressBookViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)get_details 
{
    ABPeoplePickerNavigationController *picker=[[ABPeoplePickerNavigationController alloc] init];
    picker.peoplePickerDelegate=self;
    [self presentModalViewController:picker animated:YES];
    [picker release];
    
}
- (void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker
{
    [self dismissModalViewControllerAnimated:YES];
}
- (BOOL)peoplePickerNavigationController: (ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person 
{
        firstname.text = (NSString *)ABRecordCopyValue(person, kABPersonFirstNameProperty);
        lastname.text  = (NSString *)ABRecordCopyValue(person, kABPersonLastNameProperty);
        ABMultiValueRef multi = ABRecordCopyValue(person, kABPersonPhoneProperty);
        number.text = (NSString*)ABMultiValueCopyValueAtIndex(multi, 0);
        [self dismissModalViewControllerAnimated:YES];
        return NO;

}
- (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier{
    return NO;
}
@end
