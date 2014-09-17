//
//  ColumnChartView.m
//  ShinobiLibrary
//
//  Created by Thomas Kelly on 26/11/2012.
//  Copyright (c) 2012 ScottLogic. All rights reserved.
//

#import "ChartsGalleryScatterViewController.h"
#import "ChartsGalleryScatterDataSource.h"

@implementation ChartsGalleryScatterViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.dataSource = [ChartsGalleryScatterDataSource new];
  
  self.chart.xAxis = [SChartNumberAxis new];
  self.chart.xAxis.title = @"Average Weight (lbs)";
  self.chart.xAxis.rangePaddingLow = @1;
  self.chart.xAxis.rangePaddingHigh = @1;
  
  self.chart.yAxis = [SChartNumberAxis new];
  self.chart.yAxis.title = @"Height (inches)";
  self.chart.yAxis.rangePaddingLow = @3;
  self.chart.yAxis.rangePaddingHigh = @3;
  
  self.chart.title = @"Height vs Average weight";
  
  [self setupChart];
}

@end
