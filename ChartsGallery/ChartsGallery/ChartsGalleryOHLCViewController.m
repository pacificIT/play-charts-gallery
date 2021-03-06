//
//  ChartsGalleryOHLCViewController.m
//  ChartsGallery
//
//  Created by Alison Clarke on 09/09/2014.
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

#import "ChartsGalleryOHLCViewController.h"
#import "ChartsGalleryOHLCDataSource.h"

@implementation ChartsGalleryOHLCViewController

- (void)createDataSource {
  self.dataSource = [ChartsGalleryOHLCDataSource new];
}

- (void)setupChart {
  self.chart.xAxis = [SChartDateTimeAxis new];
  self.chart.xAxis.title = @"";
  
  self.chart.yAxis = [SChartNumberAxis new];
  self.chart.yAxis.title = @"Value in £s";
  self.chart.yAxis.defaultRange = [[SChartNumberRange alloc] initWithMinimum:@5600 andMaximum:@5950];
  
  self.chart.title = @"OHLC chart";
  
  [super setupChart];
  
  self.chart.legend.hidden = YES;
}

@end
