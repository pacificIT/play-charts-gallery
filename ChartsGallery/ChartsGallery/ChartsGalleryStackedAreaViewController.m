//
//  StackedAreaChartView.m
//  ShinobiLibrary
//
//  Created by Sam Davies on 27/11/2012.
//  Copyright (c) 2012 ScottLogic. All rights reserved.
//

#import "ChartsGalleryStackedAreaViewController.h"
#import "ChartsGalleryStackedAreaDataSource.h"

@implementation ChartsGalleryStackedAreaViewController

- (void)createDataSource {
  self.dataSource = [ChartsGalleryStackedAreaDataSource new];
}

- (void)setupChart {
  self.chart.xAxis = [SChartDateTimeAxis new];
  self.chart.xAxis.title = @"Day in April";
  self.chart.xAxis.majorTickFrequency = [SChartDateFrequency dateFrequencyWithDay:1];
  
  self.chart.yAxis = [SChartNumberAxis new];
  self.chart.yAxis.title = @"Units sold";
  
  self.chart.title = @"Stacked area chart";
  
  [super setupChart];
  
  self.chart.legend.style.orientation = SChartLegendOrientationHorizontal;
  self.chart.legend.style.horizontalPadding = @10;
  self.chart.legend.position = SChartLegendPositionBottomMiddle;
  self.chart.legend.style.symbolAlignment = SChartSeriesLegendAlignSymbolsLeft;
  self.chart.legend.style.textAlignment = NSTextAlignmentLeft;
}

@end
