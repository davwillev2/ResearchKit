/*
 Copyright (c) 2016, Darren Levy. All rights reserved.
 Copyright (c) 2018, David Evans, University of Birmingham. All rights reserved.
 
 Redistribution and use in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:
 
 1.  Redistributions of source code must retain the above copyright notice, this
 list of conditions and the following disclaimer.
 
 2.  Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation and/or
 other materials provided with the distribution.
 
 3.  Neither the name of the copyright holder(s) nor the names of any contributors
 may be used to endorse or promote products derived from this software without
 specific prior written permission. No license is granted to the trademarks of
 the copyright holders even if such marks are included in this software.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#import "ORKForwardBendingRangeOfMotionStepViewController.h"

#import "ORKRangeOfMotionResult.h"
#import "ORKStepViewController_Internal.h"



@implementation ORKForwardBendingRangeOfMotionStepViewController

#pragma mark - ORKActiveTaskViewController

- (ORKResult *)result {
    ORKStepResult *stepResult = [super result];
    
    ORKRangeOfMotionResult *result = [[ORKRangeOfMotionResult alloc] initWithIdentifier:self.step.identifier];
    result.start = _startAngle - 90.0;
    result.finish = _rangeOfMotionAngle - result.start;
    // ADDED this to expose the min/max angles in the result
    result.minimum = _minAngle - result.start;
    result.maximum = _maxAngle - result.start;
    result.range = fabs(result.maximum - result.minimum);
    
    stepResult.results = [self.addedResults arrayByAddingObject:result] ? : @[result];
    
    return stepResult;
}

@end