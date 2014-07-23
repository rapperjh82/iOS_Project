//
//  ViewController.m
//  iOS_Project
//
//  Created by JUNGHYEON KIM on 2014-07-22.
//  Copyright (c) 2014 Group A of IPCT, Lambton College. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)
nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)saveButton:(id)sender

{
    BOOL success = NO;
    NSString *alertString = @"failed to save!";
    NSString *alertSuccess= @"Saved!";
    if (firstNameTextField.text.length>0 &&lastNameTextField.text.length>0 &&
        phoneTextField.text.length>0 &&emailTextField.text.length>0 )
    {
        success = [[DatabaseManager getSharedInstance]saveData:
                   firstNameTextField.text lastName:lastNameTextField.text phone:phoneTextField.text email:emailTextField.text];
    }
    else
    {
        alertString = @"Input all fields!";
    }
    if (success == NO)
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:alertString message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:alertSuccess message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    
}

- (IBAction)findButton:(id)sender
{
    NSArray *data = [[DatabaseManager getSharedInstance]findByFirstName:
                     findByFirstNameTextField.text];
    if (data == nil)
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:
                              @"Data not found" message:nil delegate:nil cancelButtonTitle:
                              @"OK" otherButtonTitles:nil];
        [alert show];
        firstNameTextField.text = @"";
        lastNameTextField.text =@"";
        phoneTextField.text = @"";
        emailTextField.text =@"";
    }
    else
    {
        firstNameTextField.text = findByFirstNameTextField.text;
        lastNameTextField.text =[data objectAtIndex:0];
        phoneTextField.text = [data objectAtIndex:1];
        emailTextField.text =[data objectAtIndex:2];
    }
}
@end
