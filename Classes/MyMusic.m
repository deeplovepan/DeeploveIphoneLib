//
//  MyMusic.m
//  MyLib
//
//  Created by deeplove on 2010/8/7.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyMusic.h"
#import "MyTime.h"


@implementation MyMusic



-(void)addMusicPlayingSliderOnView:(UIView*)view musciLength:(int)len
				   sliderLocStartX:(float)x sliderLocStartY:(float)y
					   sliderWidth:(float)sliderWidth
{
	float labelWidth = 50;
	float labelHeight = 15;
	songLen = len;
	
	offsetLabel = [[UILabel alloc] initWithFrame:
				   CGRectMake(x-labelWidth, y+5, 
							  labelWidth, labelHeight)];
	offsetLabel.backgroundColor = [UIColor clearColor];
	offsetLabel.textColor = [UIColor whiteColor];
	offsetLabel.text = @"0:00";
	offsetLabel.textAlignment = UITextAlignmentRight;
	[view addSubview:offsetLabel];
	[offsetLabel release];
	
	remainingLabel = [[UILabel alloc] initWithFrame:
					  CGRectMake(x+sliderWidth, y+5,
								 labelWidth, labelHeight)];
	remainingLabel.backgroundColor = [UIColor clearColor];
	remainingLabel.textColor = [UIColor whiteColor];
	remainingLabel.textAlignment = UITextAlignmentLeft;
	remainingLabel.text = [MyTime getMinSecondStringFromSecond:len];
	[view addSubview:remainingLabel];
	[remainingLabel release];
	
	slider = [[UISlider alloc] initWithFrame:
			  CGRectMake(x, y, sliderWidth, 1)];
	[view addSubview:slider];
	[slider release];
	
}

-(void)sliderChanged
{
	player.currentTime = songLen*slider.value; 
}

-(void)enableSliderChange
{
	[slider addTarget:self action:@selector(sliderChanged)
	 forControlEvents:UIControlEventValueChanged];
}

-(void)updateSlider
{
	int currentTime = player.currentTime;
	slider.value = player.currentTime/songLen;
	offsetLabel.text = [MyTime getMinSecondStringFromSecond:currentTime];
	remainingLabel.text = [MyTime getMinSecondStringFromSecond:songLen-currentTime];
	
	if(currentTime != songLen)
	{
		[NSTimer scheduledTimerWithTimeInterval:1.0 target:self 
									   selector:@selector(updateSlider)
									   userInfo:nil repeats:NO];
		
	}
	
}

-(void)updateMusicSlder:(AVAudioPlayer*)newPlayer
{
	player = newPlayer;
	[NSTimer scheduledTimerWithTimeInterval:1.0 target:self 
								   selector:@selector(updateSlider)
								   userInfo:nil repeats:NO];
}

-(void)removeMusicPlayingSlider
{
	[slider removeFromSuperview];
	[offsetLabel removeFromSuperview];
	[remainingLabel removeFromSuperview];
}

@end
