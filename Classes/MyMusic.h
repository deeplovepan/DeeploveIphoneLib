//
//  MyMusic.h
//  MyLib
//
//  Created by deeplove on 2010/8/7.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface MyMusic : NSObject {
	UISlider *slider;
	UILabel *offsetLabel;
	UILabel *remainingLabel;
	AVAudioPlayer *player;
	int songLen;
	
}
-(void)removeMusicPlayingSlider;
-(void)addMusicPlayingSliderOnView:(UIView*)view musciLength:(int)len
				   sliderLocStartX:(float)x sliderLocStartY:(float)y
					   sliderWidth:(float)sliderWidth;
-(void)updateMusicSlder:(AVAudioPlayer*)newPlayer;
-(void)enableSliderChange;
@end
