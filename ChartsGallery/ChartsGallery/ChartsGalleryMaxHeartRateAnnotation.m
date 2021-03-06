//
//  ChartsGalleryMaxHeartRateAnnotation.m
//  ChartsGallery
//
//  Created by Daniel Allsop on 08/01/2015.
//
//  Copyright 2014 Scott Logic
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "ChartsGalleryMaxHeartRateAnnotation.h"
#import "ShinobiPlayUtils/UIFont+SPUFont.h"

@implementation ChartsGalleryMaxHeartRateAnnotation

- (instancetype)initWithText:(NSString *)text withXAxis:(SChartAxis *)xAxis andYAxis:(SChartAxis *)yAxis
                 atXPosition:(id)xPosition atYPosition:(id)yPosition{
  self = [super initWithText:text withXAxis:xAxis andYAxis:yAxis atXPosition:xPosition];
  if (self) {
    // Set all the required properties
    self.yValue = yPosition;
    self.position = SChartAnnotationAboveData;
  }
  return self;
}

- (void)customizeLabel {
  self.label.font = [UIFont shinobiFontOfSize:15];
  self.label.numberOfLines = 0;
  self.label.lineBreakMode = NSLineBreakByWordWrapping;
}

- (void)updateViewWithCanvas:(SChartCanvas *)canvas {
  [super updateViewWithCanvas:canvas];
  // Move us so we are anchored on the middle left
  self.center = CGPointMake(self.center.x, self.center.y - (self .label.bounds.size.height * 0.6));
}

@end
