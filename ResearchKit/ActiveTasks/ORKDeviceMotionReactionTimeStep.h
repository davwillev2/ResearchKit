/*
  ORKDeviceMotionReactionTimeStep.h
  ResearchKit

  Created by James Cox on 07/05/2015.
  Copyright (c) 2015 researchkit.org. All rights reserved.
*/


#import <ResearchKit/ResearchKit.h>


NS_ASSUME_NONNULL_BEGIN

ORK_CLASS_AVAILABLE
@interface ORKDeviceMotionReactionTimeStep : ORKActiveStep

@property (nonatomic, assign) NSTimeInterval maximumStimulusInterval;

@property (nonatomic, assign) NSTimeInterval minimumStimulusInterval;

@property (nonatomic, assign) NSTimeInterval timeout;

@property (nonatomic, assign) NSInteger numberOfAttempts;

@property (nonatomic, assign) double thresholdAcceleration;

@property (nonatomic, assign) UInt32 successSound;

@property (nonatomic, assign) UInt32 timeoutSound;

@property (nonatomic, assign) UInt32 failureSound;

@end

NS_ASSUME_NONNULL_END
