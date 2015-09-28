//
//  ViewController.m
//  seeme
//
//  Created by Spider on 7/6/15.
//  Copyright (c) 2015 Spider. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKShareKit/FBSDKShareKit.h>

@interface ViewController ()

@property(nonatomic) NSInteger numberOfLines;

@property (strong, nonatomic) NSArray* myArray;

@property (weak, nonatomic) IBOutlet UIButton *dieOne;
@property (weak, nonatomic) IBOutlet UIButton *dieTwo;
@property (weak, nonatomic) IBOutlet UIButton *dieThree;
@property (weak, nonatomic) IBOutlet UIButton *dieFour;
@property (weak, nonatomic) IBOutlet UIButton *dieFive;

@property (nonatomic) int die1Value;
@property (nonatomic) int die2Value;
@property (nonatomic) int die3Value;
@property (nonatomic) int die4Value;
@property (nonatomic) int die5Value;

@property (weak, nonatomic) IBOutlet UILabel *totalLabelIt;

@property (weak, nonatomic) IBOutlet UIButton *rollDice;

@property (nonatomic) int sumTotal;

@property (strong,nonatomic) NSMutableArray* totals;

@property NSInteger arrayPointer;

// @property (weak, nonatomic) IBOutlet UITableView* newTotal;

@end

@implementation ViewController


- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    FBSDKShareLinkContent *content = [[FBSDKShareLinkContent alloc] init];
    content.contentURL = [NSURL URLWithString:@"https://developers.facebook.com"];
    
    
    FBSDKShareDialog *dialog = [[FBSDKShareDialog alloc] init];
    dialog.fromViewController = self;
    dialog.shareContent = content;
    dialog.mode = FBSDKShareDialogModeShareSheet;
    [dialog show];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"felt.jpg"]];
    self.totals=[NSMutableArray new];
    self.arrayPointer=0;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)pressUp:(UIButton *)sender {
    
    int r = (rand() % 10) + 1;
    [sender setTitle:[NSString stringWithFormat:@"%li",(long)r] forState:UIControlStateNormal];
}



- (IBAction)rollDice:(id)sender {
    
    self.die1Value = (arc4random() % 6) + 1;
    self.die2Value = (arc4random() % 6) + 1;
    self.die3Value = (arc4random() % 6) + 1;
    self.die4Value = (arc4random() % 6) + 1;
    self.die5Value = (arc4random() % 6) + 1;
    
    [self.dieOne setTitle:[NSString stringWithFormat:@"%li",(long)self.die1Value ] forState:UIControlStateNormal];
    [self.dieTwo setTitle:[NSString stringWithFormat:@"%li",(long)self.die2Value ] forState:UIControlStateNormal];
    [self.dieThree setTitle:[NSString stringWithFormat:@"%li",(long)self.die3Value ] forState:UIControlStateNormal];
    [self.dieFour setTitle:[NSString stringWithFormat:@"%li",(long)self.die4Value ] forState:UIControlStateNormal];
    [self.dieFive setTitle:[NSString stringWithFormat:@"%li",(long)self.die5Value ] forState:UIControlStateNormal];
    
    self.sumTotal = self.die1Value + self.die2Value + self.die3Value + self.die4Value + self.die5Value;
    
    
    if (self.numberOfLines <= 8) {
        //  if (self.numberOfLines <= 8) {
        NSString *i = [NSString stringWithFormat:@"\nTotal is: %d", self.sumTotal];
        self.totalLabelIt.text = [self.totalLabelIt.text stringByAppendingString:i];
        
        if (self.numberOfLines > 8) {
            //  if (self.numberOfLines <= 8) {
            NSString *i = [NSString stringWithFormat:@"\nTotal issss: %d", self.sumTotal];
            self.totalLabelIt.text = [self.totalLabelIt.text stringByAppendingString:i];
            
        }
        
    }
    
    
//   [self addTotalToArray: totals];
//    
//    -(void) addTotalToArray:(NSInteger) totals {
//        NSNumber totalNum=[NSNumber numberWithInteger:total];
//        if (self.arrayPointer > self.totals.count-1) {
//            [self.totals addObject:totalNum];
//        } else {
//            self.totals[self.arrayPointer]=totalNum;
//        }
//        
//        if (++self.arrayPointer == 8) {
//            self.arrayPointer=0;
//        }
//    }
    
  //  self.numberOfLines = 0;
  //  do {
  //      NSString *temp = [NSString stringWithFormat:@"\nTotal is: %d", self.sumTotal];
  //      self.totalLabelIt.text = [self.totalLabelIt.text stringByAppendingString:temp];
  //  } while (self.numberOfLines <= 5);
    
    //int self;.numberOfLines;
    /*
    for( self.numberOfLines = 0; self.numberOfLines < 5; self.numberOfLines++ )
    {
        NSLog(@"value of a: %ld\n", (long)self.numberOfLines);
    }
   */
//   [brokenCars removeLastObject];
//    NSMutableArray *myArray = [NSMutableArray arrayWithObjects:, nil];
//    if (self.sumTotal) {
//        [myArray addObject:[NSNumber numberWithInt:self.sumTotal]];
//        NSLog(@"%d", self.sumTotal);
//    }
    
    
   // NSLog(@"Value is %ld", (long)self.numberOfLines);
   // NSInteger i = self.numberOfLines = 0;

    if (self.numberOfLines <= 7) {
      //  if (self.numberOfLines <= 8) {
        NSString *i = [NSString stringWithFormat:@"\nTotal is: %d", self.sumTotal];
        self.totalLabelIt.text = [self.totalLabelIt.text stringByAppendingString:i];
        
        if (self.numberOfLines > 8) {
            //  if (self.numberOfLines <= 8) {
            NSString *i = [NSString stringWithFormat:@"\nTotal issss: %d", self.sumTotal];
            self.totalLabelIt.text = [self.totalLabelIt.text stringByAppendingString:i];
            // }
        }
      // }
    }

/*    while (self.numberOfLines == 0) {
        NSString *temp = [NSString stringWithFormat:@"\nTotal is: %d", self.sumTotal];
        self.totalLabelIt.text = [self.totalLabelIt.text stringByAppendingString:temp];
    }
 */
    
/*
    if (self.numberOfLines <= 6) {
        NSString *temp = [NSString stringWithFormat:@"\nTotal is: %d", self.sumTotal];
        self.totalLabelIt.text = [self.totalLabelIt.text stringByAppendingString:temp];
    } else if (self.numberOfLines > 8) {
        NSString *temp = [NSString stringWithFormat:@"\nTotal is greater 9: %d", self.sumTotal];
        self.totalLabelIt.text = [self.totalLabelIt.text stringByAppendingString:temp];
    }
*/
  //  self.totalLabelIt.text = [NSString stringWithFormat:@"Total is %li",(long)self.sumTotal];
}

- (IBAction)rollIt:(id)sender {
 /*
    //  Creating a NSMutableArray to save every total generated by the dice roll
    NSMutableArray *myArray = [NSMutableArray array];
    if (self.sumTotal) {
    [myArray addObject:[NSNumber numberWithInt:self.sumTotal]];
    }
    
    for (NSString *item in myArray) {
        NSLog(@"%@", item);
       // NSString *temp = [NSString stringWithFormat:@"\nTotal is: %@", item];
       //  self.totalLabelIt.text = [self.totalLabelIt.text stringByAppendingString:temp];
    }
*/
    // NSString * result = [[myArray valueForKey:@"description"] componentsJoinedByString:@"\n"];
    // self.textIt.text = result;
    
    // Every item prints to the console
    // NSLog(@"myArray:\n%@", myArray);
    
    // Would like to output all the total to the screen.
    // self.arrayLabelIt.text = [NSString stringWithFormat:@"iArray %@", self.myArray];

}


-(IBAction)tweetAction:(UIButton *)sender {
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        
        SLComposeViewController *tweetView = [SLComposeViewController
                                              composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetView setInitialText:@"tweeting from my app"];
        [tweetView addImage:[UIImage imageNamed:@"tweet-Dices.jpg"]];
        [tweetView addURL:[NSURL URLWithString:@"alexknows.biz"]];
        [self presentViewController:tweetView animated:YES completion:nil];
        
    }
    else
    {
        
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Unable to tweet"
                                  message:@"Please make sure you have a twitter account"
                                  delegate:self
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        [alertView show];
    }
}


  
@end
