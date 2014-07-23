//
//  ViewController.h
//  iOS_Project
//
//  Created by JUNGHYEON KIM on 2014-07-22.
//  Copyright (c) 2014 Group A of IPCT, Lambton College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DatabaseManager.h"

@interface ViewController : UIViewController
{
    __weak IBOutlet UITextField *firstNameTextField;
    __weak IBOutlet UITextField *lastNameTextField;
    __weak IBOutlet UITextField *phoneTextField;
    __weak IBOutlet UITextField *emailTextField;
    __weak IBOutlet UITextField *findByFirstNameTextField;
    __weak IBOutlet UIScrollView *scrollView;
    
}
- (IBAction)saveButton:(id)sender;
- (IBAction)findButton:(id)sender;

@end
