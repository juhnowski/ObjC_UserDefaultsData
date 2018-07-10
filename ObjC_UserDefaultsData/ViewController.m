//
//  ViewController.m
//  ObjC_UserDefaultsData
//
//  Created by Илья Юхновский on 11.07.2018.
//  Copyright © 2018 Илья Юхновский. All rights reserved.
//

#import "ViewController.h"
#define k_Save @"Save"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSUserDefaults *savedapp = [NSUserDefaults standardUserDefaults];
    bool saved = [savedapp boolForKey:k_Save];
    if(!saved) {
        self.Label.text = @"not saved";
    } else {
        self.Label.text = @"saved";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)SaveApp:(id)sender {
    NSUserDefaults *savedapp = [NSUserDefaults standardUserDefaults];
    [savedapp setBool:TRUE forKey:k_Save];
    [savedapp synchronize];
    self.Label.text = @"saved";
}
@end
