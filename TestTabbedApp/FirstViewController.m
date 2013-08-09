//
//  FirstViewController.m
//  TestTabbedApp
//
//  Created by Matthew Mayer on 02/08/2013.
//  Copyright (c) 2013 ReignDesign. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)showPicker:(id)sender {
    NEOColorPickerViewController *controller = [[NEOColorPickerViewController alloc] init];
    controller.delegate = self;
    controller.selectedColor = [[UIApplication sharedApplication] delegate].window.tintColor;
    controller.title = @"Tint color";
    UINavigationController* navVC = [[UINavigationController alloc] initWithRootViewController:controller];
    [self presentViewController:navVC animated:YES completion:nil];
}
- (void) colorPickerViewController:(NEOColorPickerBaseViewController *)controller didSelectColor:(UIColor *)color {
    // Do something with the color.
    [[UIApplication sharedApplication] delegate].window.tintColor = color;
    [controller dismissViewControllerAnimated:YES completion:nil];
}

- (void) colorPickerViewControllerDidCancel:(NEOColorPickerBaseViewController *)controller {
    [controller dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
