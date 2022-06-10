//
//  ViewController.m
//  HLPageControl
//
//  Created by JJB_iOS on 2022/6/9.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Response Event

- (IBAction)actions:(UIButton *)sender {
    if (sender.tag == 0) {
        self.pageControl.currentPage = self.pageControl.currentPage-1;
    } else {
        self.pageControl.currentPage = self.pageControl.currentPage+1;
    }
}

@end
