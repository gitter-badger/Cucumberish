//
//  CCIAroundHock.h
//
//	Created by Ahmed Ali on 19/1/2016
//  Copyright © 2016 Ahmed Ali. All rights reserved.
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <Foundation/Foundation.h>
#import "CCIBlockDefinitions.h"
@class CCIScenarioDefinition;
/**
 You pass this block when calling around(,) function. In this block implementation you will receive two paramters: scenario definition and scenario execution block.
 @Note
 if you did not call the scenario execution block inside your block, the scenario will never get executed.
 */



@interface CCIAroundHock : NSObject

@property (nonatomic, strong) NSArray * tags;
@property (nonatomic, copy) CCIScenarioExecutionHockBlock block;

+ (instancetype)hockWithTags:(NSArray *)tags block:(CCIScenarioExecutionHockBlock)block;
@end
