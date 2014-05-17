//
//  NHAHomePageViewController.m
//  aviationProject
//
//  Created by Hackademy on 5/17/14.
//  Copyright (c) 2014 NHAviation.org. All rights reserved.
//

#import "NHAHomePageViewController.h"
#import "NHAHoursAndRates.h"

@interface NHAHomePageViewController ()

@end

@implementation NHAHomePageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    //[[UIImage imageNamed:@"Blue_Sky.png"] drawInRect:self.view.bounds];
    [[UIImage imageNamed:@"sky.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    [self.phoneButton addTarget:self action:@selector(openPhone:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (IBAction)openPhone:(id)sender{
    /*NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"tel:+16036694820"]];
     [[UIApplication sharedApplication] openURL:url];*/
    
    /*NSString *title = @"location";
     float latitude = 42.929435;
     float longitude = 71.426986;
     int zoom = 13;
     NSString *stringURL = [NSString stringWithFormat:@"http://maps.apple.com/maps?q=%@@%1.6f,%1.6f&z=%d", title, latitude, longitude, zoom];
     NSURL *url = [NSURL URLWithString:stringURL];
     [[UIApplication sharedApplication] openURL:url];*/
    
    /*NSString *stringURL = @"mailto:avmuseum@nhahs.org";
     NSURL *url = [NSURL URLWithString:stringURL];
     [[UIApplication sharedApplication] openURL:url];*/
    
    /*NSURL *url = [NSURL URLWithString:@"fb://profile/nhahs"];
     [[UIApplication sharedApplication] openURL:url];*/
    
    /*NSString *stringURL = @"https://www.youtube.com/watch?feature=player_embedded&v=M_g39M7XkW4";
     NSURL *url = [NSURL URLWithString:stringURL];
     [[UIApplication sharedApplication] openURL:url];*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
