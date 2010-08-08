//
//  MyLibViewController.m
//  MyLib
//
//  Created by deeplove on 2010/8/7.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MyLibViewController.h"
#import "MyMusic.h"

@implementation MyLibViewController

-(IBAction)butPressed:(id)sender
{
	MPMoviePlayerController *player = [MyMusic playAudio:@"http://download.yojutsu.com/paulcmusic/paulcooper-twilight.mp3"];
	[self.view addSubview:player.view];
	player.view.frame = CGRectMake(0, 0, 200, 200);
	player.view.center = CGPointMake(160, 240);
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
